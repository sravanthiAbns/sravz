using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCFApplication.Models;

namespace MVCFApplication.Controllers
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult DisplayProduct()
        {
            
            NorthwindEntities context = new NorthwindEntities();
            return View(context.Products);
        }
    }
}