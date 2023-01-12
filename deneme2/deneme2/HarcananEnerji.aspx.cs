using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme2
{
    public partial class HarcananEnerji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float result = 0, wVar = 0, yrysDk = 0, ksDk = 0, yzmDk = 0, tnsDk = 0, yzDk = 0, utuDk = 0;
            float yuruyusMET = 5;
            float kosuMET = 8;
            float yuzmeMET = 7;
            float tenisMET = 8;
            float yaziMET = 2;
            float utuMET = 3;

            wVar = float.Parse(TextBox1.Text);
            yrysDk = float.Parse(TextBox2.Text);
            ksDk = float.Parse(TextBox3.Text);
            yzmDk = float.Parse(TextBox4.Text);
            tnsDk = float.Parse(TextBox5.Text);
            yzDk = float.Parse(TextBox6.Text);
            utuDk = float.Parse(TextBox7.Text);


            result = (float)((yuruyusMET * 3.5 * (wVar / 200) * yrysDk) + (kosuMET * 3.5 * (wVar / 200) * ksDk) + (yuzmeMET * 3.5 * (wVar / 200) * yzmDk) + (tenisMET * 3.5 * (wVar / 200) * tnsDk) + (yaziMET * 3.5 * (wVar / 200) * yzDk) + (utuMET * 3.5 * (wVar / 200) * utuDk));

            Label1.Text = "Yakılan kalori : " + result.ToString() + " kcal";
        }
    }
}