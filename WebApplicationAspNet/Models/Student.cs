using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationAspNet.Models
{
    public class Student
    {
        [Key]
        [Required]
        public int Id { get; set; }
        [Required]
        [DisplayName("First Name")]
        public string FirstName { get; set; }
        [Required]
        public string Surname { get; set; }
        public string Gender { get; set; }
        [DisplayName("Date of Birth")]
        public string DateOfBirth { get; set; }
        public string Address { get; set; }
        [DisplayName("Subject Enrolled")]
        public string SubjectEnrolled { get; set; }

    }
}
