using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class Verification : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	

		protected void Button1_Click(object sender, EventArgs e)
		{

			ServiceReference1.Service1Client ser = new ServiceReference1.Service1Client();

			Label7.Text = ser.verification(TextBox1.Text, TextBox2.Text);
			
		}
	}
}