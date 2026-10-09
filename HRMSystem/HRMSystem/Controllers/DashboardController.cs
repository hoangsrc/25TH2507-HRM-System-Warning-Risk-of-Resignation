using System;
using System.Linq;
using System.Web.Mvc;
using HRMSystem.Models;
using Newtonsoft.Json;

namespace HRMSystem.Controllers
{
    public class DashboardController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: /Dashboard
        public ActionResult Index()
        {
            // KPI CARDS
            ViewBag.TongNhanSu = db.NHANVIENs.Count();
            ViewBag.CongNhanMay = db.NHANVIENs.Count(n => n.CHUYENID != null);
            ViewBag.SoChuyenMay = db.CHUYEN_SANXUAT.Count();
            ViewBag.HopDongHieuLuc = db.HOPDONGs.Count(h => h.TRANGTHAI == "Con hieu luc");

            // BIỂU ĐỒ 1: PHÂN BỔ CÔNG NHÂN THEO 10 CHUYỀN MAY / TỔ SẢN XUẤT
            var chuyenData = db.CHUYEN_SANXUAT
                .Select(c => new
                {
                    TenChuyen = c.TENCHUYEN,
                    SoLuong = db.NHANVIENs.Count(n => n.CHUYENID == c.CHUYENID)
                }).ToList();

            ViewBag.ChuyenLabels = JsonConvert.SerializeObject(chuyenData.Select(x => x.TenChuyen).ToList());
            ViewBag.ChuyenData = JsonConvert.SerializeObject(chuyenData.Select(x => x.SoLuong).ToList());

            // BIỂU ĐỒ 2: CƠ CẤU GIỚI TÍNH NGÀNH MAY
            var genderData = db.NHANVIENs
                .GroupBy(n => n.GIOITINH)
                .Select(g => new
                {
                    GioiTinh = g.Key == "Nam" ? "Nam giới" : "Nữ giới",
                    SoLuong = g.Count()
                }).ToList();

            ViewBag.GenderLabels = JsonConvert.SerializeObject(genderData.Select(x => x.GioiTinh).ToList());
            ViewBag.GenderData = JsonConvert.SerializeObject(genderData.Select(x => x.SoLuong).ToList());

            // BIỂU ĐỒ 3: PHÂN LOẠI HỢP ĐỒNG LAO ĐỘNG
            var contractData = db.HOPDONGs
                .GroupBy(h => h.LOAIHOPDONG)
                .Select(g => new
                {
                    LoaiHD = g.Key,
                    SoLuong = g.Count()
                }).ToList();

            ViewBag.ContractLabels = JsonConvert.SerializeObject(contractData.Select(x => x.LoaiHD).ToList());
            ViewBag.ContractData = JsonConvert.SerializeObject(contractData.Select(x => x.SoLuong).ToList());

            return View();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing) db.Dispose();
            base.Dispose(disposing);
        }
    }
}