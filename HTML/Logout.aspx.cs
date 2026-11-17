using System;

namespace ai.HTML
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userName"] = "زائر";
            Session["userFName"] = "زائر";
            Session["admin"] = "no";

            Response.Redirect("main page.aspx");
        }
    }
}
