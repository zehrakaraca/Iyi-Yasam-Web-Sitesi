using deneme2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace deneme2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Students obj = new Students();
            return View(obj);
        }

        [HttpPost]
        public ActionResult Index(Students objuserlogin)
        {
            var display = Userloginvalues().Where(m => m.UserName == objuserlogin.UserName && m.UserPassword == objuserlogin.UserPassword).FirstOrDefault();
            if (display != null)
            {
                ViewBag.Status = "DOĞRU Kullanıcı İsmi ve Şifre";
                Response.Redirect("AdminKategori.aspx");
            }
            else
            {
                ViewBag.Status = "YANLIŞ Kullanıcı İsmi ve Şifre";
            }
            return View(objuserlogin);
        }
        public List<Students> Userloginvalues()
        {
            List<Students> objModel = new List<Students>();
            objModel.Add(new Students { UserName = "Admin", UserPassword = "1234" });
            objModel.Add(new Students { UserName = "user", UserPassword = "1234" });
            objModel.Add(new Students { UserName = "Deneme", UserPassword = "1234" });
            
            return objModel;
        }
    }
}
