using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace deneme2
{
    public class sqlclass
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-B3DT9H5;Initial Catalog=YemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}