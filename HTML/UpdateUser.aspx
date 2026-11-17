<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="ai.HTML.UpdateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <script src="../JavaScript/JavaScript.js"></script>
    <title>تحديث البيانات</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>تحديث البيانات</h1>

    <% if (Session["userName"].ToString() == "زائر") { %>
        <h3 style="text-align:center;"><%= msg %></h3>
    <% } else { %>
    <table style="width:70%; margin:auto;">
        <tr>
            <td>اسم المستخدم</td>
            <td><input type="text" id="uName" name="uName" disabled="disabled" value="<%= uName %>" /></td>
            <td><input type="text" id="mUName" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>الاسم الشخصي</td>
            <td><input type="text" id="fName" name="fName" value="<%= fName %>" /></td>
            <td><input type="text" id="mFName" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>اسم العائلة</td>
            <td><input type="text" id="lName" name="lName" value="<%= lName %>" /></td>
            <td><input type="text" id="mLName" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>البريد الإلكتروني</td>
            <td><input type="text" id="email" name="email" value="<%= email %>" /></td>
            <td><input type="text" id="mEmail" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>مجالات الذكاء الاصطناعي</td>
            <td>
                <input type="checkbox" name="hobies" value="MachineLearning" <%= hob1 %> /> تعلّم الآلة
                <input type="checkbox" name="hobies" value="DeepLearning" <%= hob2 %> /> التعلّم العميق
                <input type="checkbox" name="hobies" value="NLP" <%= hob3 %> /> معالجة اللغة
                <input type="checkbox" name="hobies" value="ComputerVision" <%= hob4 %> /> الرؤية الحاسوبية
                <input type="checkbox" name="hobies" value="Other" <%= hob5 %> /> مجالات أخرى
            </td>
            <td><input type="text" id="mHobies" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>كلمة المرور</td>
            <td><input type="password" id="pw" name="pw" value="<%= pw %>" maxlength="8" /></td>
            <td><input type="text" id="mPassword" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>تأكيد كلمة المرور</td>
            <td><input type="password" id="rePassword" value="<%= pw %>" maxlength="8" /></td>
        </tr>
        <tr>
            <td>سنة الميلاد</td>
            <td>
                <select id="yearBorn" name="yearBorn">
                    <option value="">اختر سنة الميلاد</option>
                    <%= yearOptions %>
                </select>
            </td>
            <td><input type="text" id="mYearBorn" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>الجنس</td>
            <td>
                <input type="radio" name="gender" value="male" <%= male %> /> ذكر
                <input type="radio" name="gender" value="female" <%= female %> /> أنثى
            </td>
            <td><input type="text" id="mGender" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>المدينة</td>
            <td>
                <select id="mCity" name="mCity">
                    <option value="">اختر المدينة</option>
                    <%= cityOptions %>
                </select>
            </td>
            <td><input type="text" id="mCityMessage" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>رقم الهاتف</td>
            <td>
                <select name="phone">
                    <option value="<%= prefix %>"><%= prefix %></option>
                    <option value="050">050</option>
                    <option value="052">052</option>
                    <option value="053">053</option>
                    <option value="054">054</option>
                    <option value="055">055</option>
                    <option value="057">057</option>
                    <option value="058">058</option>
                </select>
                - <input type="text" name="phoneNum" id="phoneNum" value="<%= phone %>" />
            </td>
            <td><input type="text" id="mPhone" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" name="submit" value="تحديث" onclick="return CheckForm();" />
            </td>
        </tr>
    </table>
    <h3 style="text-align:center;"><%= msg %></h3>
    <% } %>
</asp:Content>
