using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class End : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Operations.Username))
            {
                username.InnerText = Operations.Username;
                true_reply_count.InnerText = Finish.TrueVariant.ToString();
                false_reply_count.InnerText = Finish.FalseVariant.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void Home_BTN_Click(object sender, EventArgs e)
        {
            Operations.Username = null;
            Finish.TrueVariant = 0;
            Finish.FalseVariant = 0;
            Response.Redirect("Home.aspx");
        }
    }
}