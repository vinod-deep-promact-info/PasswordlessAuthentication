using System;
using System.Collections.Generic;
using System.Text;

namespace PasswordlessAuthentication.Students
{
    public class CustomIdentityUserDto
    {
        public Guid? UserId { get; set; }
        public string? UserName { get; set; }
        public string? Action { get; set; }
        public DateTime? maxCreationTime { get; set; }
    }
}
