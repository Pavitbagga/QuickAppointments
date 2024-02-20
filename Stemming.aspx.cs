using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectA7
{
	public partial class Stemming : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnStemText_Click(object sender, EventArgs e)
        {

        }

		protected void stemButton_Click(object sender, EventArgs e)
		{

			string result = "";
			ServiceReference1.Service1Client stemObj = new ServiceReference1.Service1Client(); // adding the service reference to the stemming service and creating an object
			string sentence = stemTextBox.Text; // taking the text from the textbox and saving it in the variable sentence.
			result = stemObj.Stemming(sentence); // applying the stemming function using the variable sentence 
			stemResult.Text = result; // assigning the textbox with the sentence
		}
	}
}