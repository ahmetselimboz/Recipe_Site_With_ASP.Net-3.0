using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminMesajlar : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                id = Request.QueryString["mesajid"];
                islem = Request.QueryString["islem"];
            }

            DataList1.DataSource = db.Tbl_Mesajlar.ToList();
            DataList1.DataBind();

            if (islem == "sil")
            {

                int x = Convert.ToInt32(Request.QueryString["mesajid"]);
                var vay = db.Tbl_Mesajlar.Find(x);
                db.Tbl_Mesajlar.Remove(vay);
                db.SaveChanges();
                Response.Redirect("AdminMesajlar.aspx");

            }

            Panel2.Visible = false;
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
    }
}