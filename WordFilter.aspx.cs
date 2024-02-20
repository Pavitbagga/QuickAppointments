using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class WordFilter : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnFilterWords_Click(object sender, EventArgs e)
        {

        }

		protected void Button2_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client svc2 = new ServiceReference1.Service1Client();
			//WordDownloadFilter.Service1Client wordDownload = new WordDownloadFilter.Service1Client();

			string unvalidatedInput = Request.Unvalidated[TextBox2.UniqueID];//doing this to accept html tags and attributes as input.

			string dt = svc2.WordFilter(unvalidatedInput);
			//string dt = wordDownload.WordFilter(unvalidatedInput);
			Label5.Text = dt;

		}
	}
}