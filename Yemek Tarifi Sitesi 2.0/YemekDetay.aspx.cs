using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(Request.QueryString["yemekid"]);
            var sorg = db.Tbl_Yemekler.Where(x => x.Yemekid == a);
            foreach (var item in sorg)
            {
                Label3.Text = item.YemekAd;
                Label4.Text = item.YemekMalzeme;
                Label5.Text = item.YemekTarif;
                Label6.Text = item.YemekPuan.ToString();
                Label7.Text = item.YemekTarih.ToString();
                Image2.ImageUrl = item.YemekResim;
            }

            
            

            int y = Convert.ToInt16(Request.QueryString["yemekid"]);

            Repeater1.DataSource = db.Tbl_Yorumlar.Where(b => b.Yemekid == y && b.YorumOnay == true).ToList();
            Repeater1.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["Yemekid"]);

            //var sorgu = db.Tbl_Yorumlar.Where(x => x.Yemekid == y);
            //foreach(var item in sorgu)
            //{

            //}
            Tbl_Yorumlar item = new Tbl_Yorumlar();
            
            item.YorumAdSoyad = TextBox1.Text;
            item.YorumMail = TextBox2.Text;
            item.Yorumİçerik = TextBox3.Text;
            item.YorumOnay = false;
            item.YorumTarih = DateTime.Now;
            item.Yemekid = Convert.ToInt16(y);
            db.Tbl_Yorumlar.Add(item);
            db.SaveChanges();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            
        }
    }
}