using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var b = Convert.ToInt32(Request.QueryString["kategoriid"]); 
            DataList2.DataSource = db.Tbl_Yemekler.Where(x=>x.Kategoriid==b).ToList();
            DataList2.DataBind();

            var K = Convert.ToInt32(Request.QueryString["kategoriid"]);          
            Repeater1.DataSource = db.Tbl_Kategoriler.Where(x => x.Kategoriid == K).ToList();
            Repeater1.DataBind();
        }
    }
}