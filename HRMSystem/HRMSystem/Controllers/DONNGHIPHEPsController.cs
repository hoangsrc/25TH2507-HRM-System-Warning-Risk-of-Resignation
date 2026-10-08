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
    public class DONNGHIPHEPsController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: DONNGHIPHEPs
        public ActionResult Index()
        {
            var dONNGHIPHEPs = db.DONNGHIPHEPs.Include(d => d.NHANVIEN);
            return View(dONNGHIPHEPs.ToList());
        }

        // GET: DONNGHIPHEPs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DONNGHIPHEP dONNGHIPHEP = db.DONNGHIPHEPs.Find(id);
            if (dONNGHIPHEP == null)
            {
                return HttpNotFound();
            }
            return View(dONNGHIPHEP);
        }

        // GET: DONNGHIPHEPs/Create
        public ActionResult Create()
        {
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN");
            return View();
        }

        // POST: DONNGHIPHEPs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DONNGHIPHEPID,NHANVIENID,LOAINGHIPHEP,TUNGAY,DENNGAY,LYDO,TRANGTHAI,NGUOIDUYET,NGAYTAO")] DONNGHIPHEP dONNGHIPHEP)
        {
            if (ModelState.IsValid)
            {
                db.DONNGHIPHEPs.Add(dONNGHIPHEP);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dONNGHIPHEP.NHANVIENID);
            return View(dONNGHIPHEP);
        }

        // GET: DONNGHIPHEPs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DONNGHIPHEP dONNGHIPHEP = db.DONNGHIPHEPs.Find(id);
            if (dONNGHIPHEP == null)
            {
                return HttpNotFound();
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dONNGHIPHEP.NHANVIENID);
            return View(dONNGHIPHEP);
        }

        // POST: DONNGHIPHEPs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DONNGHIPHEPID,NHANVIENID,LOAINGHIPHEP,TUNGAY,DENNGAY,LYDO,TRANGTHAI,NGUOIDUYET,NGAYTAO")] DONNGHIPHEP dONNGHIPHEP)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dONNGHIPHEP).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NHANVIENID = new SelectList(db.NHANVIENs, "NHANVIENID", "MANHANVIEN", dONNGHIPHEP.NHANVIENID);
            return View(dONNGHIPHEP);
        }

        // GET: DONNGHIPHEPs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DONNGHIPHEP dONNGHIPHEP = db.DONNGHIPHEPs.Find(id);
            if (dONNGHIPHEP == null)
            {
                return HttpNotFound();
            }
            return View(dONNGHIPHEP);
        }

        // POST: DONNGHIPHEPs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DONNGHIPHEP dONNGHIPHEP = db.DONNGHIPHEPs.Find(id);
            db.DONNGHIPHEPs.Remove(dONNGHIPHEP);
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
