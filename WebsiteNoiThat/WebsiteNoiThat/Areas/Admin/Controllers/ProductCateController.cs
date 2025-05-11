﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models.DAO;
using Models.EF;
using System.Web.Script.Serialization;
using PagedList;
using PagedList.Mvc;
using System.IO;
using WebsiteNoiThat.Common;

namespace WebsiteNoiThat.Areas.Admin.Controllers
{
    public class ProductCateController : HomeController
    {
        DBNoiThat db = new DBNoiThat();

        public ActionResult Index()
        {
            return View();
        }

        [HasCredential(RoleId = "VIEW_CATE")]
        public ActionResult Show()
        {
            var session = (UserLogin)Session[WebsiteNoiThat.Common.Commoncontent.user_sesion_admin];
            ViewBag.username = session.Username;

            return View(db.Categories.ToList());
        }

        [HttpGet]
        [HasCredential(RoleId = "ADD_CATE")]
        public ActionResult Add()
        {
            var session = (UserLogin)Session[WebsiteNoiThat.Common.Commoncontent.user_sesion_admin];
            var get_allcate = db.Categories.OrderByDescending(m => m.CategoryId).ToHashSet();
            ViewBag.ParId = new SelectList(get_allcate, "CategoryId", "Name");
            ViewBag.username = session.Username;
            return View();
        }

        [HttpPost]
        [HasCredential(RoleId = "ADD_CATE")]
        public ActionResult Add(Category n)
        {
            var model = db.Categories.SingleOrDefault(a => a.CategoryId == n.CategoryId);
            if (model != null)
            {
                ModelState.AddModelError("CateError", "CategoryId already in use");
                return View();
            }
            else
            {
                db.Categories.Add(n);
                db.SaveChanges();
                return RedirectToAction("Show");
            }

        }




        [HttpGet]
        [HasCredential(RoleId = "EDIT_CATE")]
        public ActionResult Edit(int CategoryId)
        {
            var session = (UserLogin)Session[WebsiteNoiThat.Common.Commoncontent.user_sesion_admin];
            ViewBag.username = session.Username;

            Category a = db.Categories.SingleOrDefault(n => n.CategoryId == CategoryId);
            return View(a);

        }

        [HttpPost]
        [HasCredential(RoleId = "EDIT_CATE")]
        public ActionResult Edit(Category n)
        {
            if (ModelState.IsValid)
            {
                db.Entry(n).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Show");
            }
            else
            {
                return JavaScript("alert('Error');");
            }
        }


        //[HttpPost]
        //[HasCredential(RoleId = "DELETE_CATE")]
        //public ActionResult Delete(FormCollection formCollection)
        //{
        //    string[] ids = formCollection["CategoryId"].Split(new char[] { ',' });

        //    foreach (string id in ids)
        //    {
        //        var model = db.Categories.Find(Convert.ToInt32(id));
        //        db.Categories.Remove(model);
        //        db.SaveChanges();
        //    }
        //    return RedirectToAction("Show");
        //}

        [HttpGet]
        [HasCredential(RoleId = "DELETE_CATE")]
        public ActionResult Delete(int id)
        {
            var category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }

            return View(category); // Trả về View xác nhận xóa
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [HasCredential(RoleId = "DELETE_CATE")]
        public ActionResult DeleteConfirmed(int id)
        {
            var category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }

            db.Categories.Remove(category);
            db.SaveChanges();

            return RedirectToAction("Show");
        }


    }
}