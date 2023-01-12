using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];
            SqlCommand komut = new SqlCommand("Select * From Table_Mesajlar where MesajId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

        }
    }
}