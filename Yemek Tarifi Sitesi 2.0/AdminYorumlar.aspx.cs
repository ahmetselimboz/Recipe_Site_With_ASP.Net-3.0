using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminYorumlar : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yorumid"];
                islem = Request.QueryString["islem"];
            }
            DataList1.DataSource = db.Tbl_Yorumlar.Where(a=>a.YorumOnay==true).ToList();
            DataList1.DataBind();

            DataList2.DataSource = db.Tbl_Yorumlar.Where(a => a.YorumOnay == false).ToList();
            DataList2.DataBind();

            if (islem == "sil")
            {
                int x = Convert.ToInt32(Request.QueryString["yorumid"]);
                var vay = db.Tbl_Yorumlar.Find(x);
                db.Tbl_Yorumlar.Remove(vay);
                db.SaveChanges();
                Response.Redirect("AdminYorumlar.aspx");
            }

                Panel2.Height = DataList1.Height;
            Panel4.Height = DataList2.Height;

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}