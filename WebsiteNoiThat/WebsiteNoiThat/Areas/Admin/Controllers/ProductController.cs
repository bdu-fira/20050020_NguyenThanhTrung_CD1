using Models.DAO;
using Models.EF;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteNoiThat.Common;
using WebsiteNoiThat.Models;

namespace WebsiteNoiThat.Areas.Admin.Controllers
{
    public class ProductController : HomeController
    {
        DBNoiThat db = new DBNoiThat();

        [HasCredential(RoleId = "VIEW_PRODUCT")]
        public ActionResult Show()
        {
            var session = (UserLogin)Session[Commoncontent.user_sesion_admin];
            ViewBag.username = session.Username;

            var productViewModels = (from a in db.Products
                                     join b in db.Providers on a.ProviderId equals b.ProviderId
                                     join c in db.Categories on a.CateId equals c.CategoryId
                                     select new ProductViewModel
                                     {
                                         ProductId = a.ProductId,
                                         Name = a.Name,
                                         Description = a.Description,
                                         Discount = a.Discount,
                                         ProviderName = b.Name,
                                         CateName = c.Name,
                                         Price = a.Price,
                                         Quantity = a.Quantity,
                                         StartDate = a.StartDate,
                                         EndDate = a.EndDate,
                                         Photo = a.Photo,
                                     }).ToList();

            return View(productViewModels);
        }

        [HttpGet]
        [HasCredential(RoleId = "ADD_PRODUCT")]
        public ActionResult Add()
        {
            ViewBag.username = ((UserLogin)Session[Commoncontent.user_sesion_admin]).Username;
            ViewBag.ListCate = new SelectList(db.Categories.ToList(), "CategoryId", "Name");
            ViewBag.ListProvider = new SelectList(db.Providers.ToList(), "ProviderId", "Name");
            return View();
        }

        [HttpPost]
        [HasCredential(RoleId = "ADD_PRODUCT")]
        [ValidateInput(false)]
        public ActionResult Add(ProductViewModel model, HttpPostedFileBase UploadImage)
        {
            ViewBag.username = ((UserLogin)Session[Commoncontent.user_sesion_admin]).Username;
            ViewBag.ListCate = new SelectList(db.Categories.ToList(), "CategoryId", "Name");
            ViewBag.ListProvider = new SelectList(db.Providers.ToList(), "ProviderId", "Name");

            if (db.Products.Any(p => p.ProductId == model.ProductId))
            {
                ModelState.AddModelError("ProductError", "Mã sản phẩm đã tồn tại!");
                return View(model);
            }

            if (UploadImage != null && UploadImage.ContentLength > 0)
            {
                var fileName = Path.GetFileName(UploadImage.FileName);
                var path = Path.Combine(Server.MapPath("~/image"), fileName);
                UploadImage.SaveAs(path);
                model.Photo = fileName;
            }

            var newProduct = new Product
            {
                ProductId = model.ProductId,
                Name = model.Name,
                Photo = model.Photo,
                Price = model.Price,
                Quantity = model.Quantity,
                StartDate = model.StartDate,
                EndDate = model.EndDate,
                CateId = model.CateId,
                Description = model.Description,
                Discount = model.Discount ?? 0,
                ProviderId = model.ProviderId
            };

            db.Products.Add(newProduct);
            db.SaveChanges();
            return RedirectToAction("Show");
        }

        [HttpGet]
        [HasCredential(RoleId = "EDIT_PRODUCT")]
        public ActionResult Edit(int ProductId)
        {
            ViewBag.username = ((UserLogin)Session[Commoncontent.user_sesion_admin]).Username;

            var product = db.Products.FirstOrDefault(p => p.ProductId == ProductId);
            if (product == null)
            {
                return HttpNotFound();
            }

            var viewModel = new ProductViewModel
            {
                ProductId = product.ProductId,
                Name = product.Name,
                Description = product.Description,
                Discount = product.Discount,
                CateId = product.CateId,
                ProviderId = product.ProviderId,
                Price = product.Price,
                Quantity = product.Quantity,
                StartDate = product.StartDate,
                EndDate = product.EndDate,
                Photo = product.Photo
            };

            ViewBag.ListCate = new SelectList(db.Categories.ToList(), "CategoryId", "Name", product.CateId);
            ViewBag.ListProvider = new SelectList(db.Providers.ToList(), "ProviderId", "Name", product.ProviderId);
            return View(viewModel);
        }

        [HttpPost]
        [HasCredential(RoleId = "EDIT_PRODUCT")]
        public ActionResult Edit(ProductViewModel model, HttpPostedFileBase UploadImage)
        {
            ViewBag.username = ((UserLogin)Session[Commoncontent.user_sesion_admin]).Username;
            ViewBag.ListCate = new SelectList(db.Categories.ToList(), "CategoryId", "Name", model.CateId);
            ViewBag.ListProvider = new SelectList(db.Providers.ToList(), "ProviderId", "Name", model.ProviderId);

            if (model.EndDate < model.StartDate)
            {
                ModelState.AddModelError("", "Ngày kết thúc phải sau ngày bắt đầu.");
                return View(model);
            }

            var product = db.Products.FirstOrDefault(p => p.ProductId == model.ProductId);
            if (product == null) return HttpNotFound();

            if (UploadImage != null && UploadImage.ContentLength > 0)
            {
                var fileName = Path.GetFileName(UploadImage.FileName);
                var path = Path.Combine(Server.MapPath("~/image"), fileName);
                UploadImage.SaveAs(path);
                product.Photo = fileName;
            }

            product.Name = model.Name;
            product.Description = model.Description;
            product.Price = model.Price;
            product.Quantity = model.Quantity;
            product.StartDate = model.StartDate;
            product.EndDate = model.EndDate;
            product.CateId = model.CateId;
            product.Discount = model.Discount ?? 0;
            product.ProviderId = model.ProviderId;

            db.SaveChanges();
            return RedirectToAction("Show");
        }

        [HttpGet]
        [HasCredential(RoleId = "DELETE_PRODUCT")]
        public ActionResult Delete(int ProductId)
        {
            var product = db.Products.Find(ProductId);
            if (product != null)
            {
                db.Products.Remove(product);
                db.SaveChanges();
            }
            return RedirectToAction("Show");
        }

        public ActionResult Menu()
        {
            ViewBag.username = ((UserLogin)Session[Commoncontent.user_sesion_admin]).Username;
            var model = new CategoryDao().ListCategory();
            return PartialView(model);
        }
    }
}
