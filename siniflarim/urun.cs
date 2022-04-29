using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace siniflarim
{
    public class urun
    {
        public string urunEkle(veritabani.Urun nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Urun yeni = new veritabani.Urun();
            yeni = nesne;
            dbEnt.Urun.Add(yeni);
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }

        public string urunguncelle(int urunİd, veritabani.Urun nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Urun yeni = new veritabani.Urun();
            var aranan = dbEnt.Urun.Where(p => p.urun_id == urunİd).FirstOrDefault();
            aranan = nesne;
            dbEnt.SaveChanges();

            //var verilerigetir = Listele();

            return "1";

        }

        public string urunSil(int urunİd, veritabani.Urun nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Urun yeni = new veritabani.Urun();
            var aranan = dbEnt.Urun.Where(p => p.urun_id == urunİd).FirstOrDefault();

            dbEnt.Urun.Remove(aranan);
            dbEnt.SaveChanges();
            //var verilerigetir = Listele();

            return "1";

        }
    }
}
