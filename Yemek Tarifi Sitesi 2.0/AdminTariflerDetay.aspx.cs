using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminTariflerDetay : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["tarifid"]);

            var sorgu = db.Tbl_Tarifler.Find(id);
            Label1.Text = sorgu.TarifAd;
            Label2.Text = sorgu.TarifMalzeme;
            Label3.Text = sorgu.TarifYapilis;
            Label4.Text = sorgu.TarifSahip;
            Label5.Text = sorgu.TarifSahipMail;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["tarifid"]);
            var s = db.Tbl_Tarifler.Find(id);
            s.TarifDurum = true;
            db.SaveChanges();
            Response.Redirect("AdminTarifler.aspx");

        }
    }
}