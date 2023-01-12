using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme2
{
    public partial class peynir : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From dbo.Table_Besinler where BesinId=2", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }
    }
}