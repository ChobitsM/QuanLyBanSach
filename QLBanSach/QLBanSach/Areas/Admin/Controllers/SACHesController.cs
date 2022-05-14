using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLBanSach.Areas.Admin.Models;

namespace QLBanSach.Areas.Admin.Controllers
{
    public class SACHesController : Controller
    {
        private WEBSACH db = new WEBSACH();

        // GET: Admin/SACHes
        public ActionResult Index()
        {
            var sACHes = db.SACHes.Include(s => s.DMSACH);
            return View(sACHes.ToList());
        }

        // GET: Admin/SACHes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SACH sACH = db.SACHes.Find(id);
            if (sACH == null)
            {
                return HttpNotFound();
            }
            return View(sACH);
        }

        // GET: Admin/SACHes/Create
        public ActionResult Create()
        {
            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM");
            return View();
        }

        // POST: Admin/SACHes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSach,MaDM,TieuDe,AnhBia,GiaBan")] SACH sACH)
        {
            //try
            //{
            //sACH.AnhBia = "";
            //if (sACH.AnhBia != null)
            //{
            //    string FileName = System.IO.Path.GetFileName(f.FileName);
            //    string extension = Path.GetExtension(sACH.ImageFile.FileName);
            //    fileName = fileName + extension;
            //    //string fileName = Path.GetFileName(tg.ImageUpload.FileName);
            //    sACH.AnhBia = "~/Areas/Admin/assets/img/" + fileName;
            //    sACH.ImageFile.SaveAs(Path.Combine(Server.MapPath("~/Areas/Admin/assets/img/"), fileName));

            //}
            //db.SACHes.Add(sACH);
            //db.SaveChanges();
            //return RedirectToAction("QlSach");
            //}
            //catch (Exception ex)
            //{
            //    ViewBag.Error = "Lỗi nhập dữ liệu" + ex.Message;
            //return View(sACH);
            //}
            if (ModelState.IsValid)
            {

                db.SACHes.Add(sACH);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM", sACH.MaDM);
            return View(sACH);
            //try
            //{
            //    if (ModelState.IsValid)
            //    {
            //        sACH.AnhBia = "";
            //        var f = Request.Files["ImageFile"];
            //        if (f != null && f.ContentLength > 0)
            //        {
            //            //Use  Namespace  called  :	System.IO
            //            string FileName = System.IO.Path.GetFileName(f.FileName);
            //            //Lấy  tên  file  upload
            //            string UploadPath = Server.MapPath("~/Areas/Admin/assets/img/" + FileName);
            //            //Copy  Và  lưu  file  vào  server.
            //            f.SaveAs(UploadPath);
            //            //Lưu  tên  file  vào  trường
            //            sACH.AnhBia = FileName;
            //        }
            //        db.SACHes.Add(sACH);
            //        db.SaveChanges();

            //    }
            //    //ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM", sACH.MaDM);
            //    return RedirectToAction("Index");

            //}
            //catch (Exception ex)
            //{
            //    ViewBag.Error = "Lỗi nhập dữ liệu" + ex.Message;
            //    return View(sACH);
            //}
        }

        // GET: Admin/SACHes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SACH sACH = db.SACHes.Find(id);
            if (sACH == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM", sACH.MaDM);
            return View(sACH);
        }

        // POST: Admin/SACHes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSach,MaDM,TieuDe,AnhBia,GiaBan")] SACH sACH)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    //sACH.AnhBia = "";
                    var f = Request.Files["ImageFile"];
                    if (f != null && f.ContentLength > 0)
                    {
                        //Use  Namespace  called  :	System.IO
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        //Lấy  tên  file  upload
                        string UploadPath = Server.MapPath("~/Areas/Admin/assets/img/" + FileName);
                        //Copy  Và  lưu  file  vào  server.
                        f.SaveAs(UploadPath);
                        //Lưu  tên  file  vào  trường
                        sACH.AnhBia = FileName;
                    }
                    db.Entry(sACH).State = EntityState.Modified;
                    db.SaveChanges();

                }
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Lỗi nhập dữ liệu" + ex.Message;
                return View(sACH);
            }
        }

        // GET: Admin/SACHes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SACH sACH = db.SACHes.Find(id);
            if (sACH == null)
            {
                return HttpNotFound();
            }
            return View(sACH);
        }

        // POST: Admin/SACHes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SACH sACH = db.SACHes.Find(id);
            db.SACHes.Remove(sACH);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}