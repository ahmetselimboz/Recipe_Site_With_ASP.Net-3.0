using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminYemekler : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["yemekid"];
            string islem = Request.QueryString["islem"];

            DataList1.DataSource = db.Tbl_Yemekler.ToList();
            DataList1.DataBind();

            if (Page.IsPostBack == false)
            {

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = db.Tbl_Kategoriler.ToList();
                DropDownList1.DataBind();
            }

            if (islem == "sil")
            {
                
                int x = Convert.ToInt32(Request.QueryString["yemekid"]);
                var vay = db.Tbl_Yemekler.Find(x);                
                db.Tbl_Yemekler.Remove(vay);
                db.SaveChanges();

                
                Response.Redirect("AdminYemekler.aspx");

            }
            Panel2.Visible = false;
            Panel4.Visible = false;

            Panel2.Height = DataList1.Height;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            Tbl_Yemekler y = new Tbl_Yemekler();
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            y.YemekAd = TextBox1.Text;
            y.YemekMalzeme = TextBox2.Text;
            y.YemekTarif = TextBox3.Text;
            y.YemekResim = "/Resimler/" + FileUpload1.FileName;
            y.Kategoriid = Convert.ToInt16(DropDownList1.SelectedValue);
            y.YemekTarih = DateTime.Now;
            y.durum = false;

            db.Tbl_Yemekler.Add(y);
            db.SaveChanges();
            Response.Write("Yemek Eklendi");
            


            var t = db.Tbl_Kategoriler.Where(x => x.Kategoriid.ToString() == DropDownList1.SelectedValue);
            foreach(var item in t)
            {
                int k = Convert.ToInt32(item.KategoriAdet);
                k = k + 1;
                item.KategoriAdet = Convert.ToInt16(k);
                
            }
            db.SaveChanges();
        }
    }
}