using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class WebDownload : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnDownloadContent_Click(object sender, EventArgs e)
        {

        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client wordDownload = new ServiceReference1.Service1Client();
			try
			{
				string dt = wordDownload.WebDownloading(TextBox1.Text);

				//Removing basic HTML tags and leading and trailing whitespaces from the result.
				//Displaying like this as label was displaying the entire gui and the textbox is outputting it in the string format
				string decodedText = HttpUtility.HtmlDecode(dt);
				string plainText = Regex.Replace(decodedText, "<.*?>", String.Empty);
				string trimmedText = plainText.Trim();

				//Label3.Text = dt;
				// TextBox3.Text = dt;
				TextBox3.Text = trimmedText;
			}
			catch (Exception ex)
			{
				Label3.Text = ex.Message;
			}
		}
	}
}