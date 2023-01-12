using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme2
{
    public partial class AdminKategoriDuzenle : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];

            if (Page.IsPostBack == false)
            {

                SqlCommand kmt = new SqlCommand("Select * from dbo.Table_Kategoriler where KategoriId=@p1", bgl.baglanti());
                kmt.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = kmt.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();

                }
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand kmt = new SqlCommand("update dbo.Table_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
            kmt.Parameters.AddWithValue("@p1", TextBox1.Text);
            kmt.Parameters.AddWithValue("@p2", TextBox2.Text);
            kmt.Parameters.AddWithValue("@p3", id);
            kmt.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}