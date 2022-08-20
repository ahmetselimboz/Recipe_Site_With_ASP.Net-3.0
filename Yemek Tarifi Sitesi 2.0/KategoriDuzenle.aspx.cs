using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int a = int.Parse(Request.QueryString["kategoriid"]);
            if (Page.IsPostBack == false)
            {
                var ina = db.Tbl_Kategoriler.Find(a);
                TextBox1.Text = ina.KategoriAd;
                TextBox2.Text = ina.KategoriAdet.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            int y = int.Parse(Request.QueryString["kategoriid"]);
            var kay = db.Tbl_Kategoriler.Find(y);
            kay.KategoriAd = TextBox1.Text;
            kay.KategoriAdet = Convert.ToInt16(TextBox2.Text);

            db.SaveChanges();
            Response.Write("Kategori güncellendi.");
            Response.Redirect("Kategoriler.aspx");



        }
    }
}