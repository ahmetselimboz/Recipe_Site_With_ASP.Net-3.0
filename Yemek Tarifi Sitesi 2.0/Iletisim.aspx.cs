using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class Iletisim : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Mesajlar m = new Tbl_Mesajlar();
            m.MesajGönderen = TextBox1.Text;
            m.MesajMail = TextBox2.Text;
            m.MesajBaslik = TextBox3.Text;
            m.MesajIcerik = TextBox4.Text;
            db.Tbl_Mesajlar.Add(m);
            db.SaveChanges();
            
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
        }
    }
}