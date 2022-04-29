using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace siniflarim
{
    public class musteri
    {
        public string musteriEkle(veritabani.Musteri nesne)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Musteri yeni = new veritabani.Musteri();
            yeni = nesne;
            dbEnt.Musteri.Add(yeni);
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }

        public  veritabani.Musteri musteriYetki(string mail, string sifre, string yetki)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            var sonuc = dbEnt.Musteri.Where(p => p.musteriPosta == mail && p.musteriSifre == sifre);
            if (sonuc != null)
                return sonuc.FirstOrDefault();
            else
                return null;
        }
        public string musteriSil(veritabani.Musteri nesne, string ad)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Musteri yeni = new veritabani.Musteri();
            var aranan = dbEnt.Musteri.Where(p => p.musteriAdi == ad).FirstOrDefault();
            dbEnt.Musteri.Remove(aranan);
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }
        public string musteriGuncelle(veritabani.Musteri nesne, string ad)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            veritabani.Musteri yeni = new veritabani.Musteri();
            var aranan = dbEnt.Musteri.Where(p => p.musteriAdi == ad).FirstOrDefault();
            aranan = nesne;
            var sonuc = dbEnt.SaveChanges();

            if (sonuc == 1)
                return "1";
            else
                return "0";
        }
        public List<veritabani.Musteri> kullaniciGetir(string ad)
        {
            veritabani.giyimMagzasiDBEntities dbEnt = new veritabani.giyimMagzasiDBEntities();
            var sonuc = dbEnt.Musteri.Where(p => p.musteriAdi.Contains(ad));
            return sonuc.ToList();
        }
    }
}
