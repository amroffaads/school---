using System;
using System.Data;
using DbDemo_MSSite;

namespace ai.HTML
{
    public partial class Applications : System.Web.UI.Page
    {
        public string msg = "";
        public string st = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string uName = Session["userName"].ToString();

            if (uName == "زائر")
            {
                msg = "يجب تسجيل الدخول لعرض التطبيقات المناسبة لك";
                msg += " [<a href='Login.aspx'>تسجيل الدخول</a>]";
                return;
            }

            string fileName = "usersDB.mdf";
            string sql = "SELECT * FROM usersTbl WHERE uName = N'" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sql);

            if (table.Rows.Count == 0)
            {
                msg = "لم يتم العثور على بيانات المستخدم";
                return;
            }

            st += "<table class='appsTable'>";

            if (table.Rows[0]["hob1"].ToString().Trim() == "t")
                AddApp("تعلّم الآلة عمليًا مع Teachable Machine", "https://teachablemachine.withgoogle.com/");

            if (table.Rows[0]["hob2"].ToString().Trim() == "t")
                AddApp("جرّب الشبكات العصبية في TensorFlow Playground", "https://playground.tensorflow.org/");

            if (table.Rows[0]["hob3"].ToString().Trim() == "t")
                AddApp("نماذج اللغة العربية والإنجليزية على Hugging Face", "https://huggingface.co/");

            if (table.Rows[0]["hob4"].ToString().Trim() == "t")
                AddApp("مسارات الرؤية الحاسوبية على Kaggle Learn", "https://www.kaggle.com/learn/computer-vision");

            if (table.Rows[0]["hob5"].ToString().Trim() == "t")
                AddApp("مسارات تعلم الذكاء الاصطناعي على Kaggle", "https://www.kaggle.com/learn");

            st += "</table>";

            if (st == "<table class='appsTable'></table>")
                msg = "لم تختر أي مجال من مجالات الذكاء الاصطناعي";
        }

        private void AddApp(string appName, string appUrl)
        {
            st += "<tr>";
            st += "<td>" + appName + "</td>";
            st += "<td><a class='appLink' href='" + appUrl + "' target='_blank'>افتح التطبيق</a></td>";
            st += "</tr>";
        }
    }
}
