using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class WConversion : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnConvertWeight_Click(object sender, EventArgs e)
        {

        }

		protected void stemButton_Click(object sender, EventArgs e)
		{

		}

		protected void wsdlButton_Click(object sender, EventArgs e)
		{

			ServiceReference1.Service1Client service1Client = new ServiceReference1.Service1Client();
			string weight = wsdlTextBox.Text;
			double kg = Convert.ToDouble(weight);
			wsdlResult.Text = service1Client.weightConversion(kg).ToString();
		}
	}
}