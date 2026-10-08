using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using HRMSystem.Models;

namespace HRMSystem.Controllers
{
    public class HOPDONGsController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: HOPDONGs
        public ActionResult Index()
        {
            var hOPDONGs = db.HOPDONGs.Include(h => h.NHANVIEN);
            return View(hOPDONGs.ToList());
        }

        // GET: HOPDONGs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOPDONG hOPDONG = db.HOPDONGs.Find(id);
            if (hOPDONG == null)
            {
                return HttpNotFound();
            }
            return View(hOPDONG);
        }

        // GET: HOPDONGs/Create
        public ActionResult Create()
        {
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN");
            return View();
        }

        // POST: HOPDONGs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HOPDONGID,NHANVIENID,SOHOPDONG,LOAIHOPDONG,TUNGAY,DENNGAY,MUCLUONG,TRANGTHAI")] HOPDONG hOPDONG)
        {
            if (ModelState.IsValid)
            {
                db.HOPDONGs.Add(hOPDONG);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", hOPDONG.NHANVIENID);
            return View(hOPDONG);
        }

        // GET: HOPDONGs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOPDONG hOPDONG = db.HOPDONGs.Find(id);
            if (hOPDONG == null)
            {
                return HttpNotFound();
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", hOPDONG.NHANVIENID);
            return View(hOPDONG);
        }

        // POST: HOPDONGs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HOPDONGID,NHANVIENID,SOHOPDONG,LOAIHOPDONG,TUNGAY,DENNGAY,MUCLUONG,TRANGTHAI")] HOPDONG hOPDONG)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hOPDONG).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", hOPDONG.NHANVIENID);
            return View(hOPDONG);
        }

        // GET: HOPDONGs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOPDONG hOPDONG = db.HOPDONGs.Find(id);
            if (hOPDONG == null)
            {
                return HttpNotFound();
            }
            return View(hOPDONG);
        }

        // POST: HOPDONGs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HOPDONG hOPDONG = db.HOPDONGs.Find(id);
            db.HOPDONGs.Remove(hOPDONG);
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
