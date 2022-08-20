using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["yemekid"]);

            if (Page.IsPostBack == false)
            {
                var ye = db.Tbl_Yemekler.Find(id);
                TextBox1.Text = ye.YemekAd;
                TextBox2.Text = ye.YemekMalzeme;
                TextBox3.Text = ye.YemekTarif;
                DropDownList1.Text = ye.Kategoriid.ToString();
            }
            if (Page.IsPostBack == false)
            {

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = db.Tbl_Kategoriler.ToList();
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["yemekid"]);
            var y = db.Tbl_Yemekler.Find(id);
            
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            y.YemekAd = TextBox1.Text;
            y.YemekMalzeme = TextBox2.Text;
            y.YemekTarif = TextBox3.Text;
            y.YemekResim = "/Resimler/" + FileUpload1.FileName;
            y.Kategoriid = Convert.ToInt16(DropDownList1.SelectedValue);            
            db.SaveChanges();
            Response.Redirect("AdminYemekler.aspx");

        }
    }
}