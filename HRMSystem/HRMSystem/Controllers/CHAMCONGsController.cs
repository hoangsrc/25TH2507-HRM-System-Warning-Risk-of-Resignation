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
    public class CHAMCONGsController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: CHAMCONGs
        public ActionResult Index()
        {
            var cHAMCONGs = db.CHAMCONGs.Include(c => c.NHANVIEN);
            return View(cHAMCONGs.ToList());
        }

        // GET: CHAMCONGs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CHAMCONG cHAMCONG = db.CHAMCONGs.Find(id);
            if (cHAMCONG == null)
            {
                return HttpNotFound();
            }
            return View(cHAMCONG);
        }

        // GET: CHAMCONGs/Create
        public ActionResult Create()
        {
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN");
            return View();
        }

        // POST: CHAMCONGs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CHAMCONGID,NHANVIENID,NGAYCHAMCONG,GIOVAO,GIORA,TRANGTHAI,GHICHU")] CHAMCONG cHAMCONG)
        {
            if (ModelState.IsValid)
            {
                db.CHAMCONGs.Add(cHAMCONG);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", cHAMCONG.NHANVIENID);
            return View(cHAMCONG);
        }

        // GET: CHAMCONGs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CHAMCONG cHAMCONG = db.CHAMCONGs.Find(id);
            if (cHAMCONG == null)
            {
                return HttpNotFound();
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", cHAMCONG.NHANVIENID);
            return View(cHAMCONG);
        }

        // POST: CHAMCONGs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CHAMCONGID,NHANVIENID,NGAYCHAMCONG,GIOVAO,GIORA,TRANGTHAI,GHICHU")] CHAMCONG cHAMCONG)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cHAMCONG).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", cHAMCONG.NHANVIENID);
            return View(cHAMCONG);
        }

        // GET: CHAMCONGs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CHAMCONG cHAMCONG = db.CHAMCONGs.Find(id);
            if (cHAMCONG == null)
            {
                return HttpNotFound();
            }
            return View(cHAMCONG);
        }

        // POST: CHAMCONGs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CHAMCONG cHAMCONG = db.CHAMCONGs.Find(id);
            db.CHAMCONGs.Remove(cHAMCONG);
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
