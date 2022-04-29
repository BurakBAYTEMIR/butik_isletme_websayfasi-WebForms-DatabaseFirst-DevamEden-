using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace siniflarim
{
    public class yorum
    {
        public string yorumEkle(veritabani.Yorum nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Yorum yeni = new veritabani.Yorum();
            yeni = nesne;
            dbEnt.Yorum.Add(yeni);
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }

        public string Yorumguncelle(string kullaniciAdi, veritabani.Yorum nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Yorum yeni = new veritabani.Yorum();
            var aranan = dbEnt.Yorum.Where(p => p.Musteri.musteriAdi == kullaniciAdi).FirstOrDefault();
            aranan = nesne;
            dbEnt.SaveChanges();
            
            //var verilerigetir = Listele();

            return "1";

        }

        public string YorumSil(string kullaniciAdi, veritabani.Yorum nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Yorum yeni = new veritabani.Yorum();
            var aranan = dbEnt.Yorum.Where(p => p.Musteri.musteriAdi == kullaniciAdi).FirstOrDefault();

            dbEnt.Yorum.Remove(aranan);
            dbEnt.SaveChanges();
            //var verilerigetir = Listele();

            return "1";

        }
    }
}
