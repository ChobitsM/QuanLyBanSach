using QLBanSach.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
namespace QLBanSach.Controllers
{
    public class HomeController : Controller
    {
        WEBSACH db = new WEBSACH();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult SpMoi(int? page)
        {
            // lấy 15 bản ghi mới theo mã
            var saches = db.SACHes.OrderByDescending(h => h.TieuDe).Select(h => h).Take(15);
            int pageSize = 6; //Kích thước trang
            int pageNumber = (page ?? 1); //Nếu null thì trả về 1
            return PartialView(saches.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult danhmuc(string id, int? page)
        {

            List<SACH> saches = new List<SACH>();
            int pageSize = 6; //Kích thước trang
            int pageNumber = (page ?? 1); //Nếu null thì trả về 1
            if (id == null)
            {
                //Lấy toàn bộ sách
                saches = db.SACHes.Select(h => h).ToList();
            }
            else
            {
                //Lấy sách theo mã tác giả được chọn
                saches = db.SACHes.Where(h => h.MaDM.ToString().Equals(id)).Select(h => h).ToList();
            }
            return View(saches.ToPagedList(pageNumber, pageSize));
        }
        public PartialViewResult ListDM()
        {
            var MaDM = db.DMSACHes.Select(n => n);
            return PartialView(MaDM);
        }
        public ActionResult chitietsp(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SACH saches = db.SACHes.Find(id);
            if (saches == null)
            {
                return HttpNotFound();
            }
            return View(saches);
        }
    }
}