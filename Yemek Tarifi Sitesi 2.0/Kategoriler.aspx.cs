using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{

    public partial class Kategoriler : System.Web.UI.Page
    {
        
        string islem = "";
        int adet = 0;
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            DataList1.DataSource = db.Tbl_Kategoriler.ToList();
            DataList1.DataBind();
            if (Page.IsPostBack == false)
            {
                islem = Request.QueryString["islem"];
                
            }
             

            if (islem == "sil")
            {

                int x = Convert.ToInt32(Request.QueryString["kategoriid"]);
                var vay = db.Tbl_Kategoriler.Find(x);
                db.Tbl_Kategoriler.Remove(vay);
                db.SaveChanges();
                Response.Redirect("Kategoriler.aspx");

            }




            Panel2.Visible = false;
            Panel4.Visible = false;

            Panel2.Height = DataList1.Height;

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Tbl_Kategoriler k = new Tbl_Kategoriler();
            k.KategoriAd = TextBox1.Text;
            k.KategoriAdet = Convert.ToInt16(adet);
            db.Tbl_Kategoriler.Add(k);
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}