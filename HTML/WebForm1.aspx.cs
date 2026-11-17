using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DbDemo_MSSite;


namespace ai.HTML
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string st = "";
        public string cityOptions = "";
        public string yearOptions = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            BuildOptions();

            if (Request.Form["btnSubmit"] != null)
            {
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string password = Request.Form["pw"];
                string prefix = Request.Form["phone"];
                string phone = Request.Form["phoneNum"];
                string city = Request.Form["mCity"];
                string hobies = Request.Form["hobies"];
                string gender = Request.Form["gender"];
                string yearBorn = Request.Form["yearBorn"];

                int yearB;
                if (!int.TryParse(yearBorn, out yearB))
                {
                    st = "الرجاء اختيار سنة ميلاد صحيحة.";
                    return;
                }

                if (string.IsNullOrEmpty(hobies))
                    hobies = "";

                char ch1 = 'f', ch2 = 'f', ch3 = 'f', ch4 = 'f', ch5 = 'f';
                if (hobies.Contains("MachineLearning"))
                    ch1 = 't';
                if (hobies.Contains("DeepLearning"))
                    ch2 = 't';
                if (hobies.Contains("NLP"))
                    ch3 = 't';
                if (hobies.Contains("ComputerVision"))
                    ch4 = 't';
                if (hobies.Contains("Other"))
                    ch5 = 't';

                string genderText = "";
                if (gender == "male")
                    genderText = "ذكر";
                else if (gender == "female")
                    genderText = "أنثى";

                string hobiesText = "";
                if (hobies.Contains("MachineLearning"))
                    hobiesText += "تعلّم الآلة ";
                if (hobies.Contains("DeepLearning"))
                    hobiesText += "التعلّم العميق ";
                if (hobies.Contains("NLP"))
                    hobiesText += "معالجة اللغة ";
                if (hobies.Contains("ComputerVision"))
                    hobiesText += "الرؤية الحاسوبية ";
                if (hobies.Contains("Other"))
                    hobiesText += "أخرى ";

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string sqlSelect = "SELECT * FROM " + tableName + " WHERE uName = N'" + uName + "'";
                string sqlInsert;
                
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    st = "اسم المستخدم موجود، الرجاء اختيار اسم آخر.";
                }
                else
                {
                    sqlInsert = "INSERT INTO " + tableName;
                    sqlInsert += " (uName, fName, lName, email, yearBorn, gender, prefix, phone, city, hob1, hob2, hob3, hob4, hob5, pw)";
                    sqlInsert += " VALUES(N'" + uName + "',N'" + fName + "',N'" + lName + "','" + email + "',";
                    sqlInsert += yearB + ",'" + gender + "','" + prefix + "','" + phone + "',N'" + city + "','" + ch1 + "','" + ch2 + "','" + ch3 + "','" + ch4 + "','" + ch5 + "','" + password + "')";
                    Helper.DoQuery(fileName, sqlInsert);
                

                st ="<table border ='1' align = 'center' dir = 'rtl'>";

                st += "<tr><th colspan = '2'>معلومات المستخدم</th></tr>";
                st += "<tr><td>اسم المستخدم</td><td>" + uName + "</td></tr>";
                st += "<tr><td>الاسم الشخصي</td><td>" + fName + "</td></tr>";
                st += "<tr><td>اسم العائلة</td><td>" + lName + "</td></tr>";
                st += "<tr><td>البريد الإلكتروني</td><td>" + email + "</td></tr>";
                st += "<tr><td>المدينة</td><td>" + city + "</td></tr>";
                st += "<tr><td>الهاتف</td><td>" + prefix + "-" + phone + "</td></tr>";
                st += "<tr><td>الجنس</td><td>" + genderText + "</td></tr>";
                st += "<tr><td>المجالات</td><td>" + hobiesText + "</td></tr>";
                st += "<tr><td>سنة الميلاد</td><td>" + yearBorn + "</td></tr>";
                st += "<tr><td>كلمة المرور</td><td>" + password + "</td></tr>";
                    st += "</table>";

    }
}
        }

        protected void BuildOptions()
        {
            string[] cities = { "الناصرة", "أم الفحم", "سخنين", "شفاعمرو", "الطيبة", "الطيرة", "كفر قاسم", "باقة الغربية", "عرابة", "رهط", "كفر كنا", "دير الأسد", "مجد الكروم", "يافة الناصرة", "عكا", "حيفا", "اللد", "الرملة", "القدس" };

            for (int i = 0; i < cities.Length; i++)
            {
                cityOptions += "<option value='" + cities[i] + "'>" + cities[i] + "</option>";
            }

            int currentYear = DateTime.Now.Year;
            for (int y = currentYear - 10; y >= currentYear - 100; y--)
            {
                yearOptions += "<option value='" + y + "'>" + y + "</option>";
            }
        }
    }
}
