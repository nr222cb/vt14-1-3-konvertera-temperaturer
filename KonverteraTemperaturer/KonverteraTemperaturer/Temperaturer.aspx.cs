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
                var steg = int.Parse(TempSteg.Text);

                // var testC2F = TemperatureConverter.CelsiusToFahrenheit(startT);

                var tHead = new TableHeaderRow();
                var tHeadC = new TableHeaderCell
                {
                    Text = "&deg;C"
                };
                var tHeadF = new TableHeaderCell
                {
                    Text = "&deg;F"
                };

                if (C2F.Checked)
                {
                    tHead.Cells.Add(tHeadC);
                    tHead.Cells.Add(tHeadF);
                }
                else
                {
                    tHead.Cells.Add(tHeadF);
                    tHead.Cells.Add(tHeadC);
                }

                Table.Rows.Add(tHead);

                for (int temp = startT; temp <= slutT; temp += steg)
                {
                    var tRow = new TableRow();
                    tRow.Cells.Add(new TableCell
                    {
                        Text = temp.ToString()
                    });

                    if (C2F.Checked)
                    {
                        tRow.Cells.Add(new TableCell
                        {
                            Text = TemperatureConverter.CelsiusToFahrenheit(temp).ToString()
                        });
                    }
                    else
                    {
                        tRow.Cells.Add(new TableCell
                        {
                            Text = TemperatureConverter.FahrenheitToCelsius(temp).ToString()
                        });
                    }

                    Table.Rows.Add(tRow);
                }

                Table.Visible = true;

            }
        }
    }
}