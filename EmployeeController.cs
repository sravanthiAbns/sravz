using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCFApplication.Models;

namespace MVCFApplication.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Display()
        {
            Employee emp1 = new Employee();
            emp1.EID = 1001;
            emp1.Ename = "Emp1001";
            return View(emp1);
        }
        public ActionResult DisplayAll()
        {
            List<Employee> employees = new List<Employee>
            {
                new Employee {EID=1001, Ename="Emp1001" },
                new Employee { EID=1002, Ename="Emp1002"},
                new Employee { EID=1003, Ename="Emp1003"},
                new Employee { EID=1004, Ename="Emp1004"}
            };
            return View( employees);
            
        }
    }
}