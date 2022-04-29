using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace siniflarim
{
    public class menu
    {
        public List<veritabani.Menu> listele()
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            var sonuc = dbEnt.Menu.OrderBy(p => p.menuAdi);

            return sonuc.ToList();           

        }
    }
}
