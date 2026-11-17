using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlLogin = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string adminName = Request.Form["adminName"];
                string pw = Request.Form["pw"];

                string fileName = "usersDB.mdf";
                string tableName = "adminTbl";

                sqlLogin = $"SELECT * FROM {tableName} WHERE adminName = N'{adminName}' AND pw = N'{pw}'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "اسم المسؤول أو كلمة المرور غير صحيحة";
                else
                {
                    Session["admin"] = "yes";
                    Session["userName"] = adminName;
                    Session["userFName"] = "المسؤول";
                    Response.Redirect("AdminPage.aspx");
                }
            }
        }
    }
}
