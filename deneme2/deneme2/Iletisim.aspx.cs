using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Table_Mesajlar(MesajAd,MesajMail,MesajIcerik) values (@p1,@p2,@p3)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txtİsim.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}