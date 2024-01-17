using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using WebApplicationAspNet.DB;

namespace WebApplicationAspNet.Controllers
{
    public class EmployerController : Controller
    {
        private readonly ILogger<EmployerController> _logger;
        private readonly AppDbContext _context;
        public EmployerController(ILogger<EmployerController> logger, AppDbContext context) 
        { 
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var employers = _context.Employers.ToList();
            return View(employers);
        }

        public IActionResult CascadeList() 
        { 
            ViewBag.Employers = new SelectList(_context.Employers, "Id", "Type", "Name");
            return View();
        }

        public JsonResult LoadEmployerSubs(int Id) 
        {
            int id = Convert.ToInt32(Id);
            //var employer_subs = _context.EmployerSubs.Where(z => z.EmployerId = id).ToList();
            //return Json(new SelectList(employer_subs, "Id", "EmployerId", "Description", "ShortDescription");
            return Json(id);
        }

    }
}
