<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="ai.HTML.DeleteUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>حذف مستخدم</title>
    <style>
        .deleteForm { text-align: center; direction: rtl; font-size: 22pt; margin: 35px auto; width: 100%; }
        .deleteForm input, .deleteForm select, .deleteForm button { font-size: 17pt; padding: 7px 14px; margin: 7px; }
        .backLink { text-align: center; font-size: 18pt; margin: 20px; }
    </style>
    <script>
        function makeDeleteValue(field) {
            var value = "";

            if (field == "gender") {
                value = "<input type='radio' name='value1' value='male' /> ذكر ";
                value += "<input type='radio' name='value1' value='female' /> أنثى";
            }
            else if (field == "yearBorn") {
                value = "<select name='value1'>";
                var currentYear = new Date().getFullYear();
                for (var year = currentYear - 10; year >= currentYear - 100; year--)
                    value += "<option value='" + year + "'>" + year + "</option>";
                value += "</select>";
            }
            else if (field == "city") {
                value = "<select name='value1'>";
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
                value = "<select name='value1'>";
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
                value = "<select name='value1'>";
                value += "<option value='hob1'>تعلّم الآلة</option>";
                value += "<option value='hob2'>التعلّم العميق</option>";
                value += "<option value='hob3'>معالجة اللغة</option>";
                value += "<option value='hob4'>الرؤية الحاسوبية</option>";
                value += "<option value='hob5'>مجالات أخرى</option>";
                value += "</select>";
            }
            else {
                value = "<input type='text' name='value1' />";
            }

            document.getElementById("deleteValue").innerHTML = value;
        }

        function setDeleteValue(oldValue) {
            var values = document.getElementsByName("value1");
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
            makeDeleteValue("<%= field1 %>");
            setDeleteValue("<%= value1 %>");
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>حذف مستخدم</h1>
    <div class="deleteForm">
        حذف حسب:
        <select name="field1" id="field1" onchange="makeDeleteValue(this.value);">
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
        <span id="deleteValue"><input type="text" name="value1" /></span>
        <input type="submit" name="submit" value="حذف" />
        <button type="button" onclick="location.href='DeleteUser.aspx';">مسح</button>
    </div>
    <h3 style="text-align:center;"><%= msg %></h3>
    <div class="backLink"><a href="AdminPage.aspx">العودة إلى صفحة المسؤول</a></div>
</asp:Content>
