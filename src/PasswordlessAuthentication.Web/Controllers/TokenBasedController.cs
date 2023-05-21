using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
using System;
using Volo.Abp.AspNetCore.Mvc;
using Volo.Abp.Identity;
using Volo.Abp.Security.Claims;
using Volo.Abp.Users;
using Microsoft.AspNetCore.Authentication;

namespace PasswordlessAuthentication.Web.Controllers
{
    public class TokenBasedController : AbpController
    {
        protected IdentityUserManager UserManager { get; }

        public TokenBasedController(IdentityUserManager userManager)
        {
            UserManager = userManager;
        }

        public virtual async Task<IActionResult> Login(string token, string userId)
        {
            var user = await UserManager.FindByIdAsync(userId);

            var isValid = await UserManager.VerifyUserTokenAsync(user, "PasswordlessLoginProvider", "passwordless-auth", token);
            if (!isValid)
            {
                throw new UnauthorizedAccessException("The token " + token + " is not valid for the user " + userId);
            }

            await UserManager.UpdateSecurityStampAsync(user);

            var roles = await UserManager.GetRolesAsync(user);

            var principal = new ClaimsPrincipal(
                new ClaimsIdentity(CreateClaims(user, roles), IdentityConstants.ApplicationScheme)
            );

            await HttpContext.SignInAsync(IdentityConstants.ApplicationScheme, principal);

            return Redirect("/");
        }

        private static IEnumerable<Claim> CreateClaims(IUser user, IEnumerable<string> roles)
        {
            var claims = new List<Claim>
        {
            new Claim("sub", user.Id.ToString()),
            new Claim(AbpClaimTypes.UserId, user.Id.ToString()),
            new Claim(AbpClaimTypes.Email, user.Email),
            new Claim(AbpClaimTypes.UserName, user.UserName),
            new Claim(AbpClaimTypes.EmailVerified, user.EmailConfirmed.ToString().ToLower()),
        };

            if (!string.IsNullOrWhiteSpace(user.PhoneNumber))
            {
                claims.Add(new Claim(AbpClaimTypes.PhoneNumber, user.PhoneNumber));
            }

            foreach (var role in roles)
            {
                claims.Add(new Claim(AbpClaimTypes.Role, role));
            }

            return claims;
        }
    }

}
