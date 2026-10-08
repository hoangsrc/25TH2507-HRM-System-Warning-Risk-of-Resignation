using System;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using HRMSystem.Models;

namespace HRMSystem.Controllers
{
    public class TaiKhoanController : Controller
    {
        private HRM_DBEntities db = new HRM_DBEntities();

        // GET: /TaiKhoan/Login
        //(Mở trang đăng nhập)
        public ActionResult Login()
        {
            if (Session["User"] != null)
            {
                return RedirectToAction("Index", "NHANVIENS");
            }
            return View();
        }

        // POST: /TaiKhoan/Login 
        //(Xử lý bấm nút Đăng nhập)
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ViewBag.Error = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!";
                return View();
            }

            var user = db.TAIKHOANs
                         .Include(t => t.VAITRO)
                         .Include(t => t.NHANVIEN)
                         .FirstOrDefault(t => t.TENDANGNHAP == username && t.MATKHAU == password && t.DANGHOATDONG);

            if (user != null)
            {
                Session["User"] = user;
                Session["Username"] = user.TENDANGNHAP;
                Session["Role"] = user.VAITRO != null ? user.VAITRO.TENVAITRO : "Admin";
                Session["FullName"] = user.NHANVIEN != null ? user.NHANVIEN.HOTEN : user.TENDANGNHAP;

                return RedirectToAction("Index", "NHANVIENS");
            }

            ViewBag.Error = "Tên đăng nhập hoặc mật khẩu không chính xác!";
            return View();
        }

        // GET: /TaiKhoan/Logout
        // (Đăng xuất)
        public ActionResult Logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Login");
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