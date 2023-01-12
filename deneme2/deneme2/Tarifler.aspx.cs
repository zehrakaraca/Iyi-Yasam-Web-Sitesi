using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From dbo.Table_Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}