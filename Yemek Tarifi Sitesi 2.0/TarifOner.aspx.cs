using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi_2._0
{
    public partial class TarifOner : System.Web.UI.Page
    {
        Dbo_yemektarifiEntities db = new Dbo_yemektarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            Tbl_Tarifler t = new Tbl_Tarifler();
            t.TarifAd = TextBox1.Text;
            t.TarifMalzeme = TextBox2.Text;
            t.TarifYapilis = TextBox3.Text;
            t.TarifResim = "/resimler/" + FileUpload1.FileName;
            t.TarifSahip = TextBox4.Text;
            t.TarifSahipMail = TextBox5.Text;
            t.TarifDurum = false;
            db.Tbl_Tarifler.Add(t);
            db.SaveChanges();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
        }
    }
}