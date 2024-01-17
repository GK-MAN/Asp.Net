using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationAspNet.Models
{
    public class Employer
    {
        [Key]
        [Required]
        public int Id { get; set; }
        [Required]
        public string Type { get; set; }
        public string Name { get; set; }

        public ICollection<EmployerSub> EmployerSubs { get; set; }
    }

    public class EmployerSub
    {
        [Key]
        [Required]
        public int Id { get; set; }
        public Int32 EmployerId { get; set; }
        public Employer Employer { get; set; }

        public string Description { get; set; }
        [DisplayName("Short Description")]
        public string ShortDescription { get; set; }
    }
}
