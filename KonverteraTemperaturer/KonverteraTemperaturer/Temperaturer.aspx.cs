using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KonverteraTemperaturer.Model;

namespace KonverteraTemperaturer
{
    public partial class Temperaturer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void KonvButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var startT = int.Parse(StartTemp.Text);
                var slutT = int.Parse(SlutTemp.Text);

                var testC2F = TemperatureConverter.CelsiusToFahrenheit(startT);
            }
        }
    }
}