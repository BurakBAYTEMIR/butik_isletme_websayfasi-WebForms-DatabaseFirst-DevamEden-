using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace butik_isletme_websayfasi
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            urlGetir(RouteTable.Routes);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        void urlGetir(RouteCollection routes)
        {
            //Login islemleri
            routes.MapPageRoute("login", "login", "~/giriskayit/login.aspx");
            routes.MapPageRoute("register", "register", "~/giriskayit/register.aspx");
            routes.MapPageRoute("forgotPassword", "forgotPassword", "~/giriskayit/forgotPassword.aspx");

            //Müşteri işlemleri
            routes.MapPageRoute("anasayfa", "musteri/anasayfa", "~/musteri/anasayfa.aspx");
            routes.MapPageRoute("kullanici", "musteri/kullanic", "~/musteri/kullanici.aspx");
            routes.MapPageRoute("sepet", "musteri/sepet", "~/musteri/sepet.aspx");
            routes.MapPageRoute("siparis", "musteri/siparis", "~/musteri/siparis.aspx");

            //Yönetici işlemleri
            routes.MapPageRoute("urunEkleme", "yonetici/urunEkleme", "~/yonetici/urunEkleme.aspx");
            routes.MapPageRoute("urunSilme", "yonetici/urunSilme", "~/yonetici/urunSilme.aspx");
        }
    }
}