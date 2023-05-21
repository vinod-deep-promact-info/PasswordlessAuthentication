using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace PasswordlessAuthentication.Students
{
    public class StudentDto : EntityDto<Guid>
    {
        public string StudentName { get; set; }
        public string Course { get; set; }
        public string Email { get; set; }
        public string mobile { get; set; }
    }
}
