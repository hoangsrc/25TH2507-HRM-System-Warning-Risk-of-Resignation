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
    public class DANHGIAKPIsController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: DANHGIAKPIs
        public ActionResult Index()
        {
            var dANHGIAKPIs = db.DANHGIAKPIs.Include(d => d.NHANVIEN);
            return View(dANHGIAKPIs.ToList());
        }

        // GET: DANHGIAKPIs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DANHGIAKPI dANHGIAKPI = db.DANHGIAKPIs.Find(id);
            if (dANHGIAKPI == null)
            {
                return HttpNotFound();
            }
            return View(dANHGIAKPI);
        }

        // GET: DANHGIAKPIs/Create
        public ActionResult Create()
        {
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN");
            return View();
        }

        // POST: DANHGIAKPIs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DANHGIAID,NHANVIENID,KYDANHGIA,DIEMHIEUSUAT,DIEMCHUYENCAN,DIEMTONGKET,NHANXET,NGUOIDANHGIA,NGAYDANHGIA")] DANHGIAKPI dANHGIAKPI)
        {
            if (ModelState.IsValid)
            {
                db.DANHGIAKPIs.Add(dANHGIAKPI);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dANHGIAKPI.NHANVIENID);
            return View(dANHGIAKPI);
        }

        // GET: DANHGIAKPIs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DANHGIAKPI dANHGIAKPI = db.DANHGIAKPIs.Find(id);
            if (dANHGIAKPI == null)
            {
                return HttpNotFound();
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dANHGIAKPI.NHANVIENID);
            return View(dANHGIAKPI);
        }

        // POST: DANHGIAKPIs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DANHGIAID,NHANVIENID,KYDANHGIA,DIEMHIEUSUAT,DIEMCHUYENCAN,DIEMTONGKET,NHANXET,NGUOIDANHGIA,NGAYDANHGIA")] DANHGIAKPI dANHGIAKPI)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dANHGIAKPI).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dANHGIAKPI.NHANVIENID);
            return View(dANHGIAKPI);
        }

        // GET: DANHGIAKPIs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DANHGIAKPI dANHGIAKPI = db.DANHGIAKPIs.Find(id);
            if (dANHGIAKPI == null)
            {
                return HttpNotFound();
            }
            return View(dANHGIAKPI);
        }

        // POST: DANHGIAKPIs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DANHGIAKPI dANHGIAKPI = db.DANHGIAKPIs.Find(id);
            db.DANHGIAKPIs.Remove(dANHGIAKPI);
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
