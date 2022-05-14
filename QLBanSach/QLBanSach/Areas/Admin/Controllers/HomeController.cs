using QLBanSach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QLBanSach.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        private WEBSACH db = new WEBSACH();

        // GET: Admin/Home
        public ActionResult Index()
        {
            //Kiểm tra thông tin đăng nhập trong session
            if (Session["matk"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string tendn, string matkhau)
        {
            if (ModelState.IsValid)
            {
                var user = db.TAIKHOANs.Where(u => u.TenDN.Equals(tendn) && u.MatKhau.Equals(matkhau) && u.Quyen == true).ToList();
                var user1 = db.TAIKHOANs.Where(u => u.TenDN.Equals(tendn) && u.MatKhau.Equals(matkhau) && u.Quyen == false).ToList();
                if (user.Count() > 0)

                {
                    //sử dụng Session: add Session
                    Session["matk"] = user.FirstOrDefault().MaTK;
                    Session["tendn"] = user.FirstOrDefault().TenDN;
                    Session["hoten"] = user.FirstOrDefault().HoTen;
                    
                    return RedirectToAction("Index");
                }
                if (user1.Count() > 0)

                {
                    //sử dụng Session: add Session
                    Session["matk1"] = user1.FirstOrDefault().MaTK;
                    Session["tendn1"] = user1.FirstOrDefault().TenDN;
                    Session["hoten1"] = user1.FirstOrDefault().HoTen;

                    return Redirect("~/Home/danhmuc");
                }
                else
                {
                    ViewBag.error = "Đăng nhập không thành công!";
                }
            }
            return View();
        }

        private void ToList()
        {
            throw new NotImplementedException();
        }

        public ActionResult Logout()
            {
                return View();
            }
        public ActionResult QlSach()
            {
                return View();
            }
        public ActionResult thoat()
        {
            Session.Clear();//remove session
            return RedirectToAction("Login");
        }
        public ActionResult DKy()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DKy([Bind(Include = "MaTK,HoTen,TenDN,MatKhau,Quyen,NgaySinh,GioiTinh,DiaChi,Email")] TAIKHOAN tAIKHOAN)
        {
            if (ModelState.IsValid)
            {
                db.TAIKHOANs.Add(tAIKHOAN);
                db.SaveChanges();
                return RedirectToAction("Login");
            }

            return View(tAIKHOAN);
        }

    }
}