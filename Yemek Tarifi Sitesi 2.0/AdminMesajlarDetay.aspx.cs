using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class AdminMesajlarDetay : System.Web.UI.Page
    {
        
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["mesajid"]);
            var tuy = db.Tbl_Mesajlar.Find(id);
            Label4.Text = tuy.MesajBaslik;
            Label5.Text = tuy.MesajGönderen;
            Label6.Text = tuy.MesajMail;
            Label7.Text = tuy.MesajIcerik;

        }
    }
}