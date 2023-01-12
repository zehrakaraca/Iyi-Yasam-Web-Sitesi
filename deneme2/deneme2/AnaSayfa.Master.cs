using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme2
{
    public partial class AnaSayfa : System.Web.UI.MasterPage
    {
        public class sqlSinif
        {
            public SqlConnection Baglanti()
            {
                SqlConnection baglan = new SqlConnection(@"Data Source = DESKTOP - B3DT9H5; Initial Catalog = YemekTarifi; Integrated Security = True");
                baglan.Open();
                return baglan;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}