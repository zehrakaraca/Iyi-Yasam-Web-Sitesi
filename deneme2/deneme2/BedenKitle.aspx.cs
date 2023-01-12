using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme2
{
    public partial class BedenKitle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float bmiVar = 0, wVar = 0, hVar = 0;

            wVar = float.Parse(TextBox1.Text);
            hVar = float.Parse(TextBox2.Text);

            bmiVar = wVar / ((hVar / 100) * (hVar / 100));

            Label1.Text = "Beden Kitle İndeksiniz: " + bmiVar.ToString();

            if (bmiVar < 18.5)
            {
                Label2.Text = "Düşük kilonuzdasınız.";
            }
            else if (bmiVar >= 18.5 && bmiVar < 25)
            {
                Label2.Text = "Normal kilonuzdasınız.";
            }
            else if (bmiVar >= 25 && bmiVar < 30)
            {
                Label2.Text = "Aşırı kilonuzdasınız.";
            }
            else if (bmiVar >= 30 && bmiVar < 40)
            {
                Label2.Text = "Obez kilonuzdasınız.";
            }
            else if (bmiVar >= 40)
            {
                Label2.Text = "Aşırı obez kilonuzdasınız.";
            }
        }
    }
}