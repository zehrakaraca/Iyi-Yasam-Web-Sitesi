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
    public partial class AdminYemekDuzenle : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];

            if (Page.IsPostBack == false)
            {

                SqlCommand kmt = new SqlCommand("Select * from dbo.Table_Yemekler where YemekId=@p1", bgl.baglanti());
                kmt.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = kmt.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    // Kategoriler
                    SqlCommand komut2 = new SqlCommand("Select * From dbo.Table_Kategoriler", bgl.baglanti());
                    SqlDataReader oku2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";
                    DropDownList1.DataSource = oku2;
                    DropDownList1.DataBind();
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update dbo.Table_Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4 where YemekId=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}