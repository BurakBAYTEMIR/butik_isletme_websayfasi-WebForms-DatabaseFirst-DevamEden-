using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace siniflarim
{
    public class siparisler
    {
        public string siparisiEkle(veritabani.Siparisler nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Siparisler yeni = new veritabani.Siparisler();
            yeni = nesne;
            dbEnt.Siparisler.Add(yeni);
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }

        public string siparisiSil(int siparisİd, veritabani.Siparisler nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Siparisler yeni = new veritabani.Siparisler();
            var aranan = dbEnt.Siparisler.Where(p => p.siparis_id == siparisİd).FirstOrDefault();

            dbEnt.Siparisler.Remove(aranan);
            dbEnt.SaveChanges();
            

            return "1";
           
        }


    }
}
