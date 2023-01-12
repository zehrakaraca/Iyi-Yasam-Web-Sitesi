using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace deneme2
{
    public partial class AdminMesaj : System.Web.UI.Page
    {
        sqlclass bgl = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * From Table_Mesajlar", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}