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
    public class NHANVIENsController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: NHANVIENs
        public ActionResult Index()
        {
            var nHANVIENs = db.NHANVIENs.Include(n => n.PHONGBAN);
            return View(nHANVIENs.ToList());
        }

        // GET: NHANVIENs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NHANVIEN nHANVIEN = db.NHANVIENs.Find(id);
            if (nHANVIEN == null)
            {
                return HttpNotFound();
            }
            return View(nHANVIEN);
        }

        // GET: NHANVIENS/Create
        public ActionResult Create()
        {
            ViewBag.PHONGBANID = new SelectList(db.PHONGBANs, "PHONGBANID", "TENPHONGBAN");
            ViewBag.CHUCVUID = new SelectList(db.CHUCVUs, "CHUCVUID", "TENCHUCVU");
            ViewBag.CHUYENID = new SelectList(db.CHUYEN_SANXUAT, "CHUYENID", "TENCHUYEN");
            return View();
        }

        // POST: NHANVIENs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NHANVIENID,PHONGBANID,CHUYENID,CHUCVUID,MANHANVIEN,HOTEN,NGAYSINH,GIOITINH,SODIENTHOAI,EMAIL,DIACHI,NGAYVAOLAM,TRANGTHAI")] NHANVIEN nHANVIEN)
        {
            if (ModelState.IsValid)
            {
                db.NHANVIENs.Add(nHANVIEN);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PHONGBANID = new SelectList(db.PHONGBANs, "PHONGBANID", "TENPHONGBAN", nHANVIEN.PHONGBANID);
            return View(nHANVIEN);
        }

        // GET: NHANVIENs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NHANVIEN nHANVIEN = db.NHANVIENs.Find(id);
            if (nHANVIEN == null)
            {
                return HttpNotFound();
            }

            // Lấy danh sách 3 bảng để đổ vào 3 ô chọn (dropdown) trên form Sửa
            ViewBag.PHONGBANID = new SelectList(db.PHONGBANs, "PHONGBANID", "TENPHONGBAN", nHANVIEN.PHONGBANID);
            ViewBag.CHUCVUID = new SelectList(db.CHUCVUs, "CHUCVUID", "TENCHUCVU", nHANVIEN.CHUCVUID);
            ViewBag.CHUYENID = new SelectList(db.CHUYEN_SANXUAT, "CHUYENID", "TENCHUYEN", nHANVIEN.CHUYENID);

            return View(nHANVIEN);
        }

        // POST: NHANVIENs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NHANVIENID,PHONGBANID,CHUYENID,CHUCVUID,MANHANVIEN,HOTEN,NGAYSINH,GIOITINH,SODIENTHOAI,EMAIL,DIACHI,NGAYVAOLAM,TRANGTHAI")] NHANVIEN nHANVIEN)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nHANVIEN).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PHONGBANID = new SelectList(db.PHONGBANs, "PHONGBANID", "TENPHONGBAN", nHANVIEN.PHONGBANID);
            return View(nHANVIEN);
        }

        // GET: NHANVIENs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NHANVIEN nHANVIEN = db.NHANVIENs.Find(id);
            if (nHANVIEN == null)
            {
                return HttpNotFound();
            }
            return View(nHANVIEN);
        }

        // POST: NHANVIENs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NHANVIEN nHANVIEN = db.NHANVIENs.Find(id);
            db.NHANVIENs.Remove(nHANVIEN);
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
