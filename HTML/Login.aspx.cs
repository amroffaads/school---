using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlLogin = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqlLogin = $"SELECT * FROM {tableName} WHERE uName = N'{uName}' AND pw = '{pw}'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "اسم المستخدم أو كلمة المرور غير صحيحة";
                else
                {
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Session["userName"] = table.Rows[0]["uName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Response.Redirect("main page.aspx");
                }
            }
        }
    }
}
