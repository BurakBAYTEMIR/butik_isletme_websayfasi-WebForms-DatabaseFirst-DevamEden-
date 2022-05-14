using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace butik_isletme_websayfasi.musteri
{
    public partial class anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            var sonuc = new siniflarim.menu().listele();
            Repeater1.DataSource = sonuc;
            Repeater1.DataBind();

            

        }
      


    }
}