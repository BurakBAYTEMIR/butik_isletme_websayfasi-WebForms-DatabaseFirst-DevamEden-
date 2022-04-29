using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace butik_isletme_websayfasi.girisKayit
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kayit_Click(object sender, EventArgs e)
        {
            var kullanici = new veritabani.Musteri();
            kullanici.musteriAdi = ad.Text;
            kullanici.musteriPosta = email.Text;
            kullanici.musteriSifre = sifre.Text;
            var kayitol = new siniflarim.musteri().musteriEkle(kullanici);
        }
    }
}