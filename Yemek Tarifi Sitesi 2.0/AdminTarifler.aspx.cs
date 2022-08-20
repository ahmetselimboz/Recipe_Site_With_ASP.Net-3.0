using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminTarifler : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["Tarifid"];
            string islem = Request.QueryString["islem"];


            DataList1.DataSource = db.Tbl_Tarifler.Where(x => x.TarifDurum == true).ToList();
            DataList1.DataBind();

            DataList2.DataSource = db.Tbl_Tarifler.Where(x => x.TarifDurum == false).ToList();
            DataList2.DataBind();

            Panel2.Visible = false;
            Panel4.Visible = false;

            Panel2.Height = DataList1.Height;
            Panel4.Height = DataList2.Height;
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
    }
}