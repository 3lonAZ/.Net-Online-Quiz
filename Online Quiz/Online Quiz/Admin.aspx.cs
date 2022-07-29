using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var session = Session["Admin"];
            if (session != null)
            {
                Response.Redirect("Admin/Home.aspx");
            }
        }
        SqlFactory factory = new SqlFactory();
        protected void AddBTN_Click(object sender, EventArgs e)
        {
            if (Admin.Value != "" && Password.Value != "")
            {
                if (factory.AdminLog(Admin.Value, Password.Value))
                {
                    Session.Timeout = 120;
                    Session.Add("Admin", Admin.Value);
                    Response.Redirect("Admin/Home.aspx");
                }
                else
                {
                    fail_log.InnerText = "Invalid Username or Password !";
                    fail_log.Visible = true;
                }
            }
            else
            {
                fail_log.Visible = true;
                fail_log.InnerText = "Username or Password is Empty !";
            }
        }
        protected void Home_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}