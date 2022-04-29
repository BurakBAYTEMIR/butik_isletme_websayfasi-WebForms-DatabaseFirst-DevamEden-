using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace butik_isletme_websayfasi.girisKayit
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_tikla_Click(object sender, EventArgs e)
        {
            if (chk_musteri.Checked == true)
            {
                var kullaniciyetkisi = "musteri";
                var kullanici = new siniflarim.musteri().musteriYetki(txt_mail.Text, txt_sifre.Text, kullaniciyetkisi);
                Session["kullanici"] = kullanici;
                Response.Redirect("/musteri/anasayfa.aspx");
            }
        }
    }
}