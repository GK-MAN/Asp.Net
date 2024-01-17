using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplicationAspNet.DB;
using WebApplicationAspNet.Models;

namespace WebApplicationAspNet.Pages.Student
{
    public class DetailsModel : PageModel
    {
        private readonly WebApplicationAspNet.DB.AppDbContext _context;

        public DetailsModel(WebApplicationAspNet.DB.AppDbContext context)
        {
            _context = context;
        }

        public Models.Student Student { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var student = await _context.Students.FirstOrDefaultAsync(m => m.Id == id);
            if (student == null)
            {
                return NotFound();
            }
            else
            {
                Student = student;
            }
            return Page();
        }
    }
}
