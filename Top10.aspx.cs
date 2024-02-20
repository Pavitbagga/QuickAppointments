using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class Top10 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnTop10Words_Click(object sender, EventArgs e)
        {

        }

		protected void top10Button_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client serviceClient = new ServiceReference1.Service1Client();
			Dictionary<string, int> result = serviceClient.top10Words(inputUrl.Text);
			string resString = JsonConvert.SerializeObject(result, Formatting.Indented);
			outputTop10.Text = resString;
		}
	}
}