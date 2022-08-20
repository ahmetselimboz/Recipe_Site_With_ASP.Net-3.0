using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminTarifYemek : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["tarifid"]);

            var sorgu = db.Tbl_Tarifler.Find(id);

            TextBox1.Text = sorgu.TarifAd;
            TextBox2.Text = sorgu.TarifMalzeme;
            TextBox3.Text = sorgu.TarifYapilis;
            Label1.Text = sorgu.TarifResim;

            if (Page.IsPostBack == false)
            {

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = db.Tbl_Kategoriler.ToList();
                DropDownList1.DataBind();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Tbl_Yemekler y = new Tbl_Yemekler();
            y.YemekAd = TextBox1.Text;
            y.YemekMalzeme = TextBox2.Text;
            y.YemekTarif = TextBox3.Text;
            y.Kategoriid = Convert.ToInt16(DropDownList1.SelectedValue);
            y.YemekResim = Label1.Text;
            y.YemekTarih = DateTime.Now;
            y.durum = false;
            db.Tbl_Yemekler.Add(y);
            db.SaveChanges();
            

            var t = db.Tbl_Kategoriler.Where(x => x.Kategoriid.ToString() == DropDownList1.SelectedValue);
            foreach (var item in t)
            {
                int k = Convert.ToInt32(item.KategoriAdet);
                k = k + 1;
                item.KategoriAdet = Convert.ToInt16(k);
                
            }
            db.SaveChanges();
        }
    }
}