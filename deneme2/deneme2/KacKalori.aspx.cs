using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace deneme2
{
    public partial class KacKalori : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["YemekTarifiConnectionString"].ConnectionString);
        sqlclass bgl = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From dbo.Table_Besinler where BesinId=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * From dbo.Table_Besinler where BesinId=2", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string find = ("Select * From dbo.Table_Besinler where(BesinAd like '%' + @besinAd + '%') ");
            //SqlCommand comm = new SqlCommand(find, con);
            //comm.Parameters.Add("@besinAd", SqlDbType.NVarChar).Value = TextBox1.Text;

            //con.Open();
            //comm.ExecuteNonQuery();
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = comm;
            //DataSet ds = new DataSet();
            //da.Fill(ds, "BesinAd");
            //GridView1.DataSource = ds;
            //GridView1.DataBind();

            //con.Close();

            if (TextBox1.Text != "")
            {
                if ((TextBox1.Text == "Muz") || (TextBox1.Text == "muz"))
                {
                    Response.Redirect("muz.aspx");
                }
                if ((TextBox1.Text == "Peynir") || (TextBox1.Text == "peynir"))
                {
                    Response.Redirect("peynir.aspx");
                }
            }
        }
    }
}