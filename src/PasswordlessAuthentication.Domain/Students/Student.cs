using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace PasswordlessAuthentication.Students
{
    public class Student : FullAuditedAggregateRoot<Guid>
    {
        public string StudentName { get; set; }
        public string Course { get; set; }
        public string Email { get; set; }
        public string mobile { get; set; }
        public bool IsDeleted { get; set; }
    }
}
