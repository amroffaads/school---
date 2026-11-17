<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SimpleQuery2.aspx.cs" Inherits="ai.HTML.SimpleQuery2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>البحث عن مستخدمين</title>
    <style>
        .adminTable { border-collapse: collapse; margin: 15px auto; font-size: 12pt; direction: ltr; }
        .adminTable th, .adminTable td { border: 1px solid black; padding: 5px; text-align: center; }
        .searchForm { text-align: center; direction: rtl; font-size: 20pt; margin: 25px auto; width: 100%; }
        .searchForm select, .searchForm input, .searchForm button { font-size: 16pt; padding: 6px 12px; margin: 5px; }
        .backLink { text-align: center; font-size: 18pt; margin: 20px; }
    </style>
    <script>
        function makeValue(field, num) {
            var value = "";

            if (field == "") {
                value = "";
            }
            else if (field == "gender") {
                value = "<input type='radio' name='value" + num + "' value='male' /> ذكر ";
                value += "<input type='radio' name='value" + num + "' value='female' /> أنثى";
            }
            else if (field == "yearBorn") {
                value = "<select name='value" + num + "'>";
                var currentYear = new Date().getFullYear();
                for (var year = currentYear - 10; year >= currentYear - 100; year--)
                    value += "<option value='" + year + "'>" + year + "</option>";
                value += "</select>";
            }
            else if (field == "city") {
                value = "<select name='value" + num + "'>";
                value += "<option value='الناصرة'>الناصرة</option>";
                value += "<option value='أم الفحم'>أم الفحم</option>";
                value += "<option value='سخنين'>سخنين</option>";
                value += "<option value='شفاعمرو'>شفاعمرو</option>";
                value += "<option value='الطيبة'>الطيبة</option>";
                value += "<option value='الطيرة'>الطيرة</option>";
                value += "<option value='كفر قاسم'>كفر قاسم</option>";
                value += "<option value='باقة الغربية'>باقة الغربية</option>";
                value += "<option value='عرابة'>عرابة</option>";
                value += "<option value='رهط'>رهط</option>";
                value += "<option value='كفر كنا'>كفر كنا</option>";
                value += "<option value='دير الأسد'>دير الأسد</option>";
                value += "<option value='مجد الكروم'>مجد الكروم</option>";
                value += "<option value='يافة الناصرة'>يافة الناصرة</option>";
                value += "<option value='عكا'>عكا</option>";
                value += "<option value='حيفا'>حيفا</option>";
                value += "<option value='اللد'>اللد</option>";
                value += "<option value='الرملة'>الرملة</option>";
                value += "<option value='القدس'>القدس</option>";
                value += "</select>";
            }
            else if (field == "prefix") {
                value = "<select name='value" + num + "'>";
                value += "<option value='050'>050</option><option value='051'>051</option>";
                value += "<option value='052'>052</option><option value='053'>053</option>";
                value += "<option value='054'>054</option><option value='055'>055</option>";
                value += "<option value='057'>057</option><option value='058'>058</option>";
                value += "<option value='02'>02</option><option value='03'>03</option>";
                value += "<option value='04'>04</option><option value='08'>08</option>";
                value += "<option value='09'>09</option><option value='077'>077</option>";
                value += "</select>";
            }
            else if (field == "hobby") {
                value = "<select name='value" + num + "'>";
                value += "<option value='hob1'>تعلّم الآلة</option>";
                value += "<option value='hob2'>التعلّم العميق</option>";
                value += "<option value='hob3'>معالجة اللغة</option>";
                value += "<option value='hob4'>الرؤية الحاسوبية</option>";
                value += "<option value='hob5'>مجالات أخرى</option>";
                value += "</select>";
            }
            else {
                value = "<input type='text' name='value" + num + "' />";
            }

            return value;
        }

        function detectField(num) {
            var field = document.getElementById("field" + num).value;
            document.getElementById("value" + num + "Place").innerHTML = makeValue(field, num);
        }

        function setFieldValue(num, oldValue) {
            var values = document.getElementsByName("value" + num);
            if (values.length == 0)
                return;

            if (values[0].type == "radio") {
                for (var i = 0; i < values.length; i++) {
                    if (values[i].value == oldValue)
                        values[i].checked = true;
                }
            }
            else {
                values[0].value = oldValue;
            }
        }

        window.onload = function () {
            document.getElementById("field1").value = "<%= field1 %>";
            detectField(1);
            setFieldValue(1, "<%= value1 %>");

            document.getElementById("field2").value = "<%= field2 %>";
            detectField(2);
            setFieldValue(2, "<%= value2 %>");
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>البحث عن مستخدمين</h1>
    <div class="searchForm">
        <div>
            الشرط الأول:
            <select name="field1" id="field1" onchange="detectField(1);">
                <option value="uName">اسم المستخدم</option>
                <option value="fName">الاسم الشخصي</option>
                <option value="lName">اسم العائلة</option>
                <option value="email">البريد الإلكتروني</option>
                <option value="gender">الجنس</option>
                <option value="yearBorn">سنة الميلاد</option>
                <option value="prefix">مقدمة الهاتف</option>
                <option value="phone">رقم الهاتف</option>
                <option value="city">المدينة</option>
                <option value="hobby">مجالات الذكاء الاصطناعي</option>
            </select>
            <span id="value1Place"><input type="text" name="value1" /></span>
        </div>
        <div>
            الشرط الثاني:
            <select name="field2" id="field2" onchange="detectField(2);">
                <option value="">بدون شرط ثاني</option>
                <option value="uName">اسم المستخدم</option>
                <option value="fName">الاسم الشخصي</option>
                <option value="lName">اسم العائلة</option>
                <option value="email">البريد الإلكتروني</option>
                <option value="gender">الجنس</option>
                <option value="yearBorn">سنة الميلاد</option>
                <option value="prefix">مقدمة الهاتف</option>
                <option value="phone">رقم الهاتف</option>
                <option value="city">المدينة</option>
                <option value="hobby">مجالات الذكاء الاصطناعي</option>
            </select>
            <span id="value2Place"></span>
        </div>
        <input type="submit" name="submit" value="بحث" />
        <button type="button" onclick="location.href='SimpleQuery2.aspx';">مسح</button>
    </div>
    <h3 style="text-align:center;"><%= msg %></h3>
    <%= st %>
    <div class="backLink"><a href="AdminPage.aspx">العودة إلى صفحة المسؤول</a></div>
</asp:Content>
