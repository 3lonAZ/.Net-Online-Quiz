using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var admin = Session["Admin"];
            if (admin != null)
            {
                admin_name.InnerText = ("'") + admin.ToString() + ("'");
                GridView1.DataSource = SqlFactory.QuizDB();
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("../Admin.aspx");
            }
        }
        SqlFactory factory = new SqlFactory();
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            List<TableCell> cells = new List<TableCell>();
            foreach (DataControlField column in GridView1.Columns)
            {
                TableCell cell = row.Cells[0];
                row.Cells.Remove(cell);
                cells.Add(cell);

            }
            row.Cells.AddRange(cells.ToArray());
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var value = GridView1.Rows[e.RowIndex].Cells[0].Text;
            if (GridView1.Rows.Count == 1)
            {
                factory.DeleteFromDB();
            }
            else
            {
                factory.DelSelectedID(int.Parse(value));
            }
            GridView1.DataSource = factory.RefreshData();
            GridView1.DataBind();
        }

        public void Alert(string txt)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('{txt}');", true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Operations.Id = (int.Parse(GridView1.Rows[e.NewEditIndex].Cells[0].Text));
            SqlFactory.SelectDataById();

            Response.Redirect("Edit.aspx");
        }
        protected void DeleteDB(object sender, EventArgs e)
        {
            factory.DeleteFromDB();
            GridView1.DataSource = factory.RefreshData();
            GridView1.DataBind();
        }
        protected void Exit_BTN_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../Admin.aspx");
        }
    }
}