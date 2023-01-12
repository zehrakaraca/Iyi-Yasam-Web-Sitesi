using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlclass tbl = new sqlclass();

        sqlclass bgl = new sqlclass();

        sqlclass snf = new sqlclass();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand kt = new SqlCommand("Select * From dbo.Table_Kategoriler", tbl.baglanti());
            SqlDataReader oku = kt.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut = new SqlCommand("Select * From dbo.Table_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand kmt = new SqlCommand("Select * From dbo.Table_Yemekler where KategoriId=@p1", snf.baglanti());
            kmt.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader drs = kmt.ExecuteReader();
            DataList2.DataSource = drs;
            DataList2.DataBind();

        }
    }
}