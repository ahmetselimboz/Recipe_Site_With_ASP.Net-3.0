using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminGununYemegiDetay : System.Web.UI.Page
    {
        bool dur = false;
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["yemekid"];

            DataList2.DataSource = db.Tbl_Yemekler.Where(x => x.Yemekid.ToString() == id).ToList();
            DataList2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var t = db.Tbl_Yemekler.Where(x => x.durum == true);
            foreach (var item in t)
            {
                item.durum = false;
            }
            db.SaveChanges();



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["yemekid"]);


            var vay = db.Tbl_Yemekler.Find(id);
            vay.durum = true;
            db.SaveChanges();
            Response.Redirect("AdminGununYemegi.aspx");

        }
    }
}