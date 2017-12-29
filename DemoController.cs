using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCFApplication.Controllers
{
    public class DemoController : Controller
    {
        List<string> cities = new List<string> { "Bengaluru","Mumbai","vizag","Chennai"};
        // GET: Demo
        // id not passed from url
        public ActionResult Action1(int? id )
        {
            if (id == null)
                return View("View1");
            else
            {
                int myindex = (int)id;
                //bag that is gng to view , viewbag is acollecction with a key value pair
                // ViewBag.myvalue = id;
                ViewBag.city = cities[myindex];
                return View(id);
            }
            return View();
            return View("View1");// want to go with diff name
            return View(10);// got to view wid same name of action
            return View("View1",10);
            //return Content("<h1> hello world from MVC,id = "+id.ToString()+"</h1>" );
        }

        // controller name is demo
        // action result name is action1
        
    }
}