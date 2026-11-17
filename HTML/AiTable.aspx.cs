using System;

namespace ai.HTML
{
    public partial class AiTable : System.Web.UI.Page
    {
        public string st = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            st += "<table class='aiTable'>";
            st += "<tr>";
            st += "<th>الرقم</th>";
            st += "<th>المجال</th>";
            st += "<th>النوع</th>";
            st += "<th>البيانات المطلوبة</th>";
            st += "<th>وقت التدريب</th>";
            st += "<th>طريقة التعلم</th>";
            st += "<th>الأدوات الأساسية</th>";
            st += "<th>مستوى الصعوبة</th>";
            st += "<th>أهم التطبيقات</th>";
            st += "<th>مثال واقعي</th>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>1</td><td>تعلم الآلة</td><td>نموذج إحصائي</td>";
            st += "<td>بيانات موسومة</td><td>دقائق إلى ساعات</td>";
            st += "<td>تعلم مراقب</td><td>scikit-learn، pandas</td>";
            st += "<td>متوسط</td><td>تصنيف وتنبؤ</td><td>فلترة البريد المزعج</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>2</td><td>التعلم العميق</td><td>شبكة عصبية</td>";
            st += "<td>صور ونصوص ضخمة</td><td>ساعات إلى أيام</td>";
            st += "<td>انتشار عكسي</td><td>PyTorch، TensorFlow</td>";
            st += "<td>صعب</td><td>التعرف على الصور</td><td>تحليل صور الأشعة</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>3</td><td>معالجة اللغة</td><td>Transformer</td>";
            st += "<td>ملايين النصوص</td><td>ساعات إلى أيام</td>";
            st += "<td>تدريب مسبق وضبط دقيق</td><td>Hugging Face، spaCy</td>";
            st += "<td>متوسط</td><td>ترجمة وتلخيص</td><td>مساعدات المحادثة</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>4</td><td>الرؤية الحاسوبية</td><td>CNN</td>";
            st += "<td>صور موسومة</td><td>ساعات إلى أيام</td>";
            st += "<td>تعلم مراقب</td><td>OpenCV، YOLO</td>";
            st += "<td>صعب</td><td>كشف الأشياء</td><td>السيارات ذاتية القيادة</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>5</td><td>الذكاء التوليدي</td><td>انتشار ونماذج لغوية</td>";
            st += "<td>بيانات ضخمة جدًا</td><td>أسابيع</td>";
            st += "<td>تدريب مسبق</td><td>Stable Diffusion، GPT</td>";
            st += "<td>صعب</td><td>توليد صور ونصوص</td><td>أدوات الرسم بالذكاء الاصطناعي</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>6</td><td>الأنظمة الخبيرة</td><td>قواعد منطقية</td>";
            st += "<td>قواعد من الخبراء</td><td>لا يوجد تدريب</td>";
            st += "<td>استنتاج منطقي</td><td>Prolog، CLIPS</td>";
            st += "<td>سهل</td><td>أنظمة الدعم الطبي</td><td>أنظمة تشخيص أولي</td>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>7</td><td>التعلم المعزز</td><td>وكيل وبيئة</td>";
            st += "<td>بيانات محاكاة</td><td>ساعات إلى أيام</td>";
            st += "<td>مكافأة وعقوبة</td><td>Gymnasium، Stable-Baselines</td>";
            st += "<td>صعب</td><td>ألعاب وروبوتات</td><td>ألعاب الذكاء والقيادة</td>";
            st += "</tr>";

            st += "</table>";
        }
    }
}
