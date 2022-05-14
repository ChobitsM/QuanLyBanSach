using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLBanSach.Models;

namespace QLBanSach.Controllers
{
    public class SACHesController : Controller
    {
        private WEBSACH db = new WEBSACH();

        // GET: SACHes
        public ActionResult Index()
        {
            var sACHes = db.SACHes.Include(s => s.DMSACH);
            return View(sACHes.ToList());
        }

        // GET: SACHes/Details/5
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

        // GET: SACHes/Create
        public ActionResult Create()
        {
            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM");
            return View();
        }

        // POST: SACHes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSach,MaDM,TieuDe,AnhBia,GiaBan")] SACH sACH)
        {
            if (ModelState.IsValid)
            {
                db.SACHes.Add(sACH);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM", sACH.MaDM);
            return View(sACH);
        }

        // GET: SACHes/Edit/5
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

        // POST: SACHes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSach,MaDM,TieuDe,AnhBia,GiaBan")] SACH sACH)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sACH).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDM = new SelectList(db.DMSACHes, "MaDM", "TenDM", sACH.MaDM);
            return View(sACH);
        }

        // GET: SACHes/Delete/5
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

        // POST: SACHes/Delete/5
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
