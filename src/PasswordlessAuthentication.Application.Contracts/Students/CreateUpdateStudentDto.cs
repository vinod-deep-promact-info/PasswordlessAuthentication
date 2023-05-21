using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace PasswordlessAuthentication.Students
{
    public class CreateUpdateStudentDto : EntityDto<Guid>
    {
        [Required]
        [StringLength(100)]
        public string StudentName { get; set; }
        [Required]
        [StringLength(30)]
        public string Course { get; set; }
        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(10)]
        public string? mobile { get; set; }
    }

}
