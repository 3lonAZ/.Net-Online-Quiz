using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Alert(string txt)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{txt}');", true);
        }

        protected void Admin_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
        protected void Start_BTN_Click(object sender, EventArgs e)
        {
            Operations.Username = username.Value;
            Response.Redirect("Quiz.aspx");
        }
    }
}