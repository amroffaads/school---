using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class ShowTable : System.Web.UI.Page
    {
        public string msg = "";
        public string st = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() != "yes")
            {
                Response.Redirect("LoginAdmin.aspx");
                return;
            }

            string fileName = "usersDB.mdf";
            string sql = "SELECT * FROM usersTbl";
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

        private void BuildTable(DataTable table)
        {
            st += "<table class='adminTable'>";
            st += "<tr>";
            st += "<th>اسم المستخدم</th><th>الاسم الشخصي</th><th>اسم العائلة</th><th>البريد الإلكتروني</th>";
            st += "<th>الجنس</th><th>سنة الميلاد</th><th>رقم الهاتف</th><th>المدينة</th>";
            st += "<th>تعلّم الآلة</th><th>التعلّم العميق</th><th>معالجة اللغة</th><th>الرؤية الحاسوبية</th><th>مجالات أخرى</th>";
            st += "</tr>";

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
            if (hobby == "t")
                return "نعم";
            return "لا";
        }
    }
}
