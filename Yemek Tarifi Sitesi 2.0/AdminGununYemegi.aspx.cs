using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminGununYemegi : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = int.Parse(Request.QueryString["yemekid"]);

            DataList1.DataSource = db.Tbl_Yemekler.ToList();
            DataList1.DataBind();

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