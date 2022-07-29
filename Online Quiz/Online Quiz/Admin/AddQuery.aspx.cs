using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class Add_Query : System.Web.UI.Page
    {
        SqlFactory factory = new SqlFactory();
        protected void Page_Load(object sender, EventArgs e)
        {
            var admin = Session["Admin"];
            if (admin == null)
            {
                Response.Redirect("../Admin.aspx");
            }
        }
        protected void AddBTN_Click(object sender, EventArgs e)
        {
            factory.InsertQuery(query.Value, variant_A.Value, variant_B.Value, variant_C.Value, variant_D.Value, char.Parse(trueVariant.Value));
            Response.Redirect("Home.aspx");
        }
        protected void Cancel_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}