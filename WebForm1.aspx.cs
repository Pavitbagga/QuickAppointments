using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button2_Click(object sender, EventArgs e)
        {
			ServiceReference1.Service1Client ser = new ServiceReference1.Service1Client();

			Label8.Text = ser.searchUser(TextBox3.Text, TextBox4.Text, "username").ToString();
		}

		protected void loginButton_Click(object sender, EventArgs e)
		{

		}
	}
}