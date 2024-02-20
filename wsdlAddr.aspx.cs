using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class wsdlAddr : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnGetWsdlAddress_Click(object sender, EventArgs e)
        {

        }

		protected void wsdlButton_Click(object sender, EventArgs e)
		{

			ServiceReference1.Service1Client wsdlObj = new ServiceReference1.Service1Client(); // added the wsdlobj to the service reference referring to the service wsdl addresses
			string URL = wsdlTextBox.Text; // saving text from the textbox into the url
			string[] result = wsdlObj.getWsdlAddress(URL); // applying the function using the url and saving that a result string array 
			string jointStr = string.Join(Environment.NewLine, result); // creating a string to contain all the results 
			wsdlResult.Text = jointStr; // adding it to the label
		}
	}
}