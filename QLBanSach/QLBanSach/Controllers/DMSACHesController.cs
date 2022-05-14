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
    public class DMSACHesController : Controller
    {
        private WEBSACH db = new WEBSACH();

        // GET: DMSACHes
        public ActionResult Index()
        {
            var dMSACH = db.DMSACHes.Include(t => t.TAIKHOAN);
            return View(dMSACH.ToList());
        }

        // GET: DMSACHes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DMSACH dMSACH = db.DMSACHes.Find(id);
            if (dMSACH == null)
            {
                return HttpNotFound();
            }
            return View(dMSACH);
        }

        // GET: DMSACHes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DMSACHes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDM,TenDM")] DMSACH dMSACH)
        {
            if (ModelState.IsValid)
            {
                db.DMSACHes.Add(dMSACH);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(dMSACH);
        }

        // GET: DMSACHes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DMSACH dMSACH = db.DMSACHes.Find(id);
            if (dMSACH == null)
            {
                return HttpNotFound();
            }
            return View(dMSACH);
        }

        // POST: DMSACHes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDM,TenDM")] DMSACH dMSACH)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dMSACH).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(dMSACH);
        }

        // GET: DMSACHes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DMSACH dMSACH = db.DMSACHes.Find(id);
            if (dMSACH == null)
            {
                return HttpNotFound();
            }
            return View(dMSACH);
        }

        // POST: DMSACHes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DMSACH dMSACH = db.DMSACHes.Find(id);
            db.DMSACHes.Remove(dMSACH);
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
