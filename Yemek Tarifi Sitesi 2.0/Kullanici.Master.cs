using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = db.Tbl_Kategoriler.ToList();
            DataList1.DataBind();
        }
    }
}