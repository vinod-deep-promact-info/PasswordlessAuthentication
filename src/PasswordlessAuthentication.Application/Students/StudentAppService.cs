using System;
using System.Linq;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.Domain.Repositories;
using Microsoft.AspNetCore.Authorization;
using Volo.Abp.Users;
using PasswordlessAuthentication.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using Volo.Abp.Identity;
namespace PasswordlessAuthentication.Students
{
    [Authorize]
    public class StudentAppService :
        CrudAppService<
        Student, //The student entity
        StudentDto, //Used to show student
        Guid, //Primary key of the student entity
        PagedAndSortedResultRequestDto, //Used for paging/sorting
        CreateUpdateStudentDto>, //Used to create/update a student
        IStudentAppService //Implement the IstudentAppService
    {
        private readonly ICurrentUser _currentUser;
        private readonly PasswordlessAuthenticationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public StudentAppService(IRepository<Student, Guid> repository, ICurrentUser currentUser, PasswordlessAuthenticationDbContext context, UserManager<IdentityUser> userManager)
        : base(repository)
        {
            _currentUser = currentUser;
            _context = context;
            _userManager = userManager;
        }
        // Your method to get logged-in user details
        public async Task<ListResultDto<CustomIdentityUserDto>> GetAllUsersWithLoggedIn()
        {
            var AllUsers = await _context.Users
                .GroupJoin(_context.SecurityLogs, u => u.Id, l => l.UserId, (u, l) => new { u, l })
                .SelectMany(x => x.l.DefaultIfEmpty(), (u, x) => new { u = u.u, l = x })
                .GroupJoin(_context.SecurityLogs.GroupBy(x => x.UserId)
                .Select(x => new { UserId = x.Key.Value, MaxCreationTime = x.Max(y => y.CreationTime) }),
                ul => new { c1 = ul.u.Id, c2 = ul.l.CreationTime },
                m => new { c1 = m.UserId, c2 = m.MaxCreationTime }, (ul, m) => new { ul, m })
                .SelectMany(x => x.m.DefaultIfEmpty(), (ul, x) => new { u = ul.ul.u, l = ul.ul.l, m = x })
                .Where(x => x.m.MaxCreationTime != null || x.l.Action == null)
                .OrderByDescending(x => x.m.MaxCreationTime)
                .Select(x =>
                new CustomIdentityUserDto
                {
                    UserId = x.u.Id,
                    UserName = x.u.UserName,
                    Action = x.l.Action,
                    maxCreationTime = x.m.MaxCreationTime
                }).ToListAsync();
            return new ListResultDto<CustomIdentityUserDto>(AllUsers);
        }

        [AllowAnonymous]
        public async Task<string> EnterUserNameOrEmail(string UserNameOrEmail)
        {
            string PasswordlessLoginUrl;
            try
            {
                var user = await _context.Users.FirstAsync(x => x.UserName == UserNameOrEmail || x.Email == UserNameOrEmail);
                var token = await _userManager.GenerateUserTokenAsync(user, "PasswordlessLoginProvider", "passwordless-auth");
                PasswordlessLoginUrl = $"Click below link to login : https://localhost:44328/TokenBased/Login?token={token}&userId={user.Id}";
            }
            catch (Exception ex)
            {
                PasswordlessLoginUrl = "Invalid User Name Or Email";
            }
            return PasswordlessLoginUrl;
        }
    }
}
