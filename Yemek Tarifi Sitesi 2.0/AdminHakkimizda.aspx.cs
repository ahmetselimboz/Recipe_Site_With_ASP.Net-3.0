using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var sorgu = db.Tbl_Hakkimizda.Where(x => x.Metinid == 1);
                foreach (var item in sorgu)
                {
                    TextBox1.Text = item.Metin;
                }
            }
            Panel2.Visible = false;

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
            var sorgu = db.Tbl_Hakkimizda.Where(x=>x.Metinid == 1);
            foreach(var item in sorgu)
            {
                item.Metin = TextBox1.Text;
            }
            db.SaveChanges();
            //Response.Redirect("AdminHakkimizda.aspx");


        }
    }
}