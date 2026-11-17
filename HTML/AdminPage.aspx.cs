using System;

namespace ai.HTML
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() != "yes")
            {
                msg = "هذه الصفحة للمسؤول فقط";
                msg += " [<a href='LoginAdmin.aspx'>دخول المسؤول</a>]";
            }
        }
    }
}
