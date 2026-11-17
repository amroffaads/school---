using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlSelect = "";
        public string sqlUpdate = "";

        public string uName = "", fName = "", lName = "", email = "", prefix = "";
        public string phone = "", gender = "", city = "", pw = "", yearBorn = "";
        public string hob1 = "", hob2 = "", hob3 = "", hob4 = "", hob5 = "";
        public string male = "", female = "";
        public string cityOptions = "", yearOptions = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            uName = Session["userName"].ToString();

            if (uName == "زائر")
            {
                msg = "يجب تسجيل الدخول لتحديث البيانات";
                msg += " [<a href='Login.aspx'>تسجيل الدخول</a>]";
            }
            else
            {
                if (Request.Form["submit"] != null)
                {
                    fName = Request.Form["fName"];
                    lName = Request.Form["lName"];
                    email = Request.Form["email"];
                    prefix = Request.Form["phone"];
                    phone = Request.Form["phoneNum"];
                    gender = Request.Form["gender"];
                    city = Request.Form["mCity"];
                    pw = Request.Form["pw"];
                    yearBorn = Request.Form["yearBorn"];

                    string hobies = Request.Form["hobies"];
                    if (string.IsNullOrEmpty(hobies))
                        hobies = "";

                    string ch1 = "f", ch2 = "f", ch3 = "f", ch4 = "f", ch5 = "f";
                    if (hobies.Contains("MachineLearning")) ch1 = "t";
                    if (hobies.Contains("DeepLearning")) ch2 = "t";
                    if (hobies.Contains("NLP")) ch3 = "t";
                    if (hobies.Contains("ComputerVision")) ch4 = "t";
                    if (hobies.Contains("Other")) ch5 = "t";

                    sqlUpdate = "UPDATE usersTbl SET ";
                    sqlUpdate += "fName = N'" + fName + "', ";
                    sqlUpdate += "lName = N'" + lName + "', ";
                    sqlUpdate += "email = '" + email + "', ";
                    sqlUpdate += "yearBorn = " + yearBorn + ", ";
                    sqlUpdate += "gender = '" + gender + "', ";
                    sqlUpdate += "prefix = '" + prefix + "', ";
                    sqlUpdate += "phone = '" + phone + "', ";
                    sqlUpdate += "city = N'" + city + "', ";
                    sqlUpdate += "hob1 = '" + ch1 + "', hob2 = '" + ch2 + "', hob3 = '" + ch3 + "', ";
                    sqlUpdate += "hob4 = '" + ch4 + "', hob5 = '" + ch5 + "', ";
                    sqlUpdate += "pw = '" + pw + "' ";
                    sqlUpdate += "WHERE uName = N'" + uName + "'";

                    Helper.DoQuery(fileName, sqlUpdate);
                    Session["userFName"] = fName;
                    msg = "تم تحديث البيانات بنجاح";
                }

                sqlSelect = "SELECT * FROM usersTbl WHERE uName = N'" + uName + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                if (table.Rows.Count > 0)
                {
                    fName = table.Rows[0]["fName"].ToString();
                    lName = table.Rows[0]["lName"].ToString();
                    email = table.Rows[0]["email"].ToString();
                    yearBorn = table.Rows[0]["yearBorn"].ToString();
                    gender = table.Rows[0]["gender"].ToString();
                    prefix = table.Rows[0]["prefix"].ToString();
                    phone = table.Rows[0]["phone"].ToString();
                    city = table.Rows[0]["city"].ToString();
                    pw = table.Rows[0]["pw"].ToString();

                    if (gender == "male") male = "checked='checked'";
                    else female = "checked='checked'";

                    if (table.Rows[0]["hob1"].ToString().Trim() == "t") hob1 = "checked='checked'";
                    if (table.Rows[0]["hob2"].ToString().Trim() == "t") hob2 = "checked='checked'";
                    if (table.Rows[0]["hob3"].ToString().Trim() == "t") hob3 = "checked='checked'";
                    if (table.Rows[0]["hob4"].ToString().Trim() == "t") hob4 = "checked='checked'";
                    if (table.Rows[0]["hob5"].ToString().Trim() == "t") hob5 = "checked='checked'";
                }
            }

            BuildOptions();
        }

        protected void BuildOptions()
        {
            string[] cities = { "الناصرة", "أم الفحم", "سخنين", "شفاعمرو", "الطيبة", "الطيرة", "كفر قاسم", "باقة الغربية", "عرابة", "رهط", "كفر كنا", "دير الأسد", "مجد الكروم", "يافة الناصرة", "عكا", "حيفا", "اللد", "الرملة", "القدس" };

            for (int i = 0; i < cities.Length; i++)
            {
                if (cities[i] == city)
                    cityOptions += "<option value='" + cities[i] + "' selected='selected'>" + cities[i] + "</option>";
                else
                    cityOptions += "<option value='" + cities[i] + "'>" + cities[i] + "</option>";
            }

            int currentYear = DateTime.Now.Year;
            for (int y = currentYear - 10; y >= currentYear - 100; y--)
            {
                if (y.ToString() == yearBorn)
                    yearOptions += "<option value='" + y + "' selected='selected'>" + y + "</option>";
                else
                    yearOptions += "<option value='" + y + "'>" + y + "</option>";
            }
        }
    }
}
