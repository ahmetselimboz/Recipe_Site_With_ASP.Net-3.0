using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var sorgu = db.Tbl_Yemekler.Where(x => x.durum == true);
            DataList2.DataSource = sorgu.ToList();
            DataList2.DataBind();
        }
    }
}