using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class WordCount : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnWordCount_Click(object sender, EventArgs e)
        {

        }

		protected void countButton_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client serviceClient = new ServiceReference1.Service1Client();
			Dictionary<string, int> result = serviceClient.wordCount(inputText.Text);
			string resString = JsonConvert.SerializeObject(result, Formatting.Indented);
			outputText.Text = resString;
		}
	}
}