using AutoMapper;
using PasswordlessAuthentication.Students;

namespace PasswordlessAuthentication;

public class PasswordlessAuthenticationApplicationAutoMapperProfile : Profile
{
    public PasswordlessAuthenticationApplicationAutoMapperProfile()
    {
        CreateMap<Student, StudentDto>();
        CreateMap<CreateUpdateStudentDto, Student>();
    }
}
