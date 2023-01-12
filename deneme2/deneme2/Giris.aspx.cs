using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection baglanti1 = new SqlConnection(@"data source=DESKTOP-B3DT9H5;initial catalog=YemekTarifi;integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti1.Open();
            SqlCommand komut = new SqlCommand("Select * From Table_Login where KULLANICI=@P1 and SIFRE=@P2", baglanti1);
            komut.Parameters.AddWithValue("@P1", TextBox1.Text);
            komut.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Hesaplamalar.aspx");
                //Response.Write("Giriş Başarılı");
            }
            else
            {
                Response.Write("Hatalı Giriş");
            }
        }

    }
}