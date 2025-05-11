using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteNoiThat.Common;
using WebsiteNoiThat.Models;

namespace WebsiteNoiThat.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Delete(long id)
        {
            var sessionCart = Session[Commoncontent.CartSession] as List<CartItem>;
            if (sessionCart != null)
            {
                var itemToRemove = sessionCart.FirstOrDefault(x => x.Product.ProductId == id);
                if (itemToRemove != null)
                {
                    sessionCart.Remove(itemToRemove);
                    Session[Commoncontent.CartSession] = sessionCart;
                }
            }

            return RedirectToAction("Index", "Cart");
        }

        [ChildActionOnly]
        public PartialViewResult HeaderCart()
        {
            var cart = Session[Commoncontent.CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }

            return PartialView(list);
        }


    }
}