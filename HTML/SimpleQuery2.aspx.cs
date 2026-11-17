using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class SimpleQuery2 : System.Web.UI.Page
    {
        public string msg = "";
        public string st = "";
        public string field1 = "uName", value1 = "", field2 = "", value2 = "";

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
                field2 = Request.Form["field2"];
                value2 = CleanJs(Request.Form["value2"]);

                string fileName = "usersDB.mdf";
                string sql = "SELECT * FROM usersTbl";
                string condition = "";

                if (HasValue(field1, Request.Form["value1"]))
                    condition = BuildCondition(field1, Request.Form["value1"]);

                if (HasValue(field2, Request.Form["value2"]))
                {
                    if (condition == "")
                        condition = BuildCondition(field2, Request.Form["value2"]);
                    else
                        condition += " AND " + BuildCondition(field2, Request.Form["value2"]);
                }

                if (condition != "")
                    sql += " WHERE " + condition;

                DataTable table = Helper.ExecuteDataTable(fileName, sql);
                int length = table.Rows.Count;

                if (length == 0)
                    msg = "لا يوجد مستخدمون";
                else
                {
                    BuildTable(table);
                    msg = "عدد المستخدمين: " + length;
                }
            }
        }

        private string CleanJs(string value)
        {
            if (value == null)
                return "";

            return value.Replace("\\", "\\\\").Replace("\"", "\\\"");
        }

        private bool HasValue(string field, string value)
        {
            if (field == "")
                return false;

            if (value == null || value.Trim() == "")
                return false;

            return true;
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

        private void BuildTable(DataTable table)
        {
            st += "<table class='adminTable'>";
            st += "<tr><th>اسم المستخدم</th><th>الاسم الشخصي</th><th>اسم العائلة</th><th>البريد الإلكتروني</th><th>الجنس</th>";
            st += "<th>سنة الميلاد</th><th>رقم الهاتف</th><th>المدينة</th><th>تعلّم الآلة</th><th>التعلّم العميق</th><th>معالجة اللغة</th><th>الرؤية الحاسوبية</th><th>مجالات أخرى</th></tr>";

            for (int i = 0; i < table.Rows.Count; i++)
            {
                st += "<tr>";
                st += "<td>" + table.Rows[i]["uName"] + "</td>";
                st += "<td>" + table.Rows[i]["fName"] + "</td>";
                st += "<td>" + table.Rows[i]["lName"] + "</td>";
                st += "<td>" + table.Rows[i]["email"] + "</td>";
                st += "<td>" + ShowGender(table.Rows[i]["gender"].ToString()) + "</td>";
                st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                st += "<td>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                st += "<td>" + table.Rows[i]["city"] + "</td>";
                st += "<td>" + ShowHobby(table.Rows[i]["hob1"].ToString()) + "</td>";
                st += "<td>" + ShowHobby(table.Rows[i]["hob2"].ToString()) + "</td>";
                st += "<td>" + ShowHobby(table.Rows[i]["hob3"].ToString()) + "</td>";
                st += "<td>" + ShowHobby(table.Rows[i]["hob4"].ToString()) + "</td>";
                st += "<td>" + ShowHobby(table.Rows[i]["hob5"].ToString()) + "</td>";
                st += "</tr>";
            }
            st += "</table>";
        }

        private string ShowGender(string gender)
        {
            if (gender == "male")
                return "ذكر";
            return "أنثى";
        }

        private string ShowHobby(string hobby)
        {
            if (hobby.Trim() == "t")
                return "نعم";
            return "لا";
        }
    }
}
