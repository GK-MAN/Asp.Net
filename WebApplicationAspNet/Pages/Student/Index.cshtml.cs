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
    public class IndexModel : PageModel
    {
        private readonly WebApplicationAspNet.DB.AppDbContext _context;

        public IndexModel(WebApplicationAspNet.DB.AppDbContext context)
        {
            _context = context;
        }

        public IList<Models.Student> Student { get;set; } = default!;

        public async Task OnGetAsync()
        {
            Student = await _context.Students.ToListAsync();
        }
    }
}
