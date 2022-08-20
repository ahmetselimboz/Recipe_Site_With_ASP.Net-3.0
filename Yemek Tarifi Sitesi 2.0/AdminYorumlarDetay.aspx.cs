using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminYorumlarDetay : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["yorumid"];

            var sorgu = from d1 in db.Tbl_Yorumlar
                        join d2 in db.Tbl_Yemekler
                        on d1.Yemekid equals d2.Yemekid
                        select new
                        {
                            yemekadı = d2.YemekAd,
                            adı = d1.YorumAdSoyad,
                            icerik = d1.Yorumİçerik,
                            tarih = d1.YorumTarih.ToString()

                        };
            foreach(var item in sorgu)
            {
                Label4.Text = item.yemekadı;
                Label5.Text = item.adı;
                Label6.Text = item.icerik;
                Label7.Text = item.tarih;
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["yorumid"]);

            var key = db.Tbl_Yorumlar.Find(id);
            key.YorumOnay = true;
            db.SaveChanges();
            Response.Redirect("AdminYorumlar.aspx");
        }
    }
}