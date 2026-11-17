using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string msg = "";
        public string field1 = "uName", value1 = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() != "yes")
            {
                Response.Redirect("LoginAdmin.aspx");
                return;
            }

            if (Request.Form["submit"] != null)
            {
                field1 = Request.Form["field1"];
                value1 = CleanJs(Request.Form["value1"]);

                string fileName = "usersDB.mdf";
                string condition = BuildCondition(field1, Request.Form["value1"]);
                string sqlSelect = "SELECT * FROM usersTbl WHERE " + condition;

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                if (table.Rows.Count > 0)
                {
                    string sqlDelete = "DELETE FROM usersTbl WHERE " + condition;
                    Helper.DoQuery(fileName, sqlDelete);
                    msg = "تم حذف عدد المستخدمين: " + table.Rows.Count;
                }
                else
                    msg = "لا يوجد مستخدمون مطابقون";
            }
        }

        private string CleanJs(string value)
        {
            if (value == null)
                return "";

            return value.Replace("\\", "\\\\").Replace("\"", "\\\"");
        }

        private string BuildCondition(string field, string value)
        {
            if (field == "hobby")
                return value + " = 't'";
            else if (field == "yearBorn")
                return field + " = " + value;
            else
                return field + " = N'" + value + "'";
        }
    }
}
