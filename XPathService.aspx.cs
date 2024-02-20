using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class XPathService : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnXPathSearch_Click(object sender, EventArgs e)
        {

        }

		protected void VerifyXml(object sender, EventArgs e)
		{

			
		}

		protected void SearchXPath(object sender, EventArgs e)
		{

			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
			resultLabel.Text = client.XPathSearch(xmlUrl.Text, xpath.Text);
		}
	}
}