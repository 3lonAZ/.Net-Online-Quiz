using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class MyQuiz : System.Web.UI.Page
    {
        SqlFactory factory = new SqlFactory();
        static char selectedVariant;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Operations.Username != null)
            {
                username.InnerText = Operations.Username;
                if (!Page.IsPostBack)
                {
                    factory.SelectAllData();
                    GetQuery(0);
                }
            }
            else
                Response.Redirect("Home.aspx");
        }
        protected void Next_BTN_Click(object sender, EventArgs e)
        {
            CalculateVariants();
            if (Operations.Count < SqlFactory.QueryCount)
            {
                Operations.Count++;
                GetQuery(Operations.Count);
            }
            else
            {
                Response.Redirect("End.Aspx");
            }
        }
        private void CalculateVariants()
        {
            if (Variants.True_Variant[Operations.Count] == selectedVariant)
                Finish.TrueVariant++;
            else
                Finish.FalseVariant++;
        }

        [System.Web.Services.WebMethod]
        public static void GetSelectedVariant(char itemId)
        {
            selectedVariant = itemId;
        }
        private void GetQuery(int count)
        {
            query.InnerText = Variants.Query[count];
            A_Variants.InnerText = Variants.A[count];
            B_Variants.InnerText = Variants.B[count];
            C_Variants.InnerText = Variants.C[count];
            D_Variants.InnerText = Variants.D[count];
        }

        protected void Finish_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("End.aspx");
        }
        public void Alert(string txt)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{txt}');", true);
        }
    }
}