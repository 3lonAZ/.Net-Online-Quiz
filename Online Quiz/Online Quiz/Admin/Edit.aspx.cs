using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz.Test
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var admin = Session["Admin"];
            if (admin == null)
            {
                Response.Redirect("../Admin.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
            
                querytxtBox.Value = Operations.Query;
                variant_A.Value = Operations.A;
                variant_B.Value = Operations.B;
                variant_C.Value = Operations.C;
                variant_D.Value = Operations.D;

                trueVariant.Value = Operations.True_Variant.ToString();
                }
            }
        }
        protected void Change_BTN_Click(object sender, EventArgs e)
        {
            SqlFactory factory = new SqlFactory();
            factory.UpdateQuery(Operations.Id, querytxtBox.Value, variant_A.Value, variant_B.Value, variant_C.Value, variant_D.Value, char.Parse(trueVariant.Value));
            Response.Redirect("Home.aspx");
        }
        
        public void Alert(string txt)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{txt}');", true);
        }
        protected void TestBTN_Click(object sender, EventArgs e)
        {
            Alert(querytxtBox.Value);
        }

        protected void Cancel_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}