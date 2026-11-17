<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ai.HTML.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../JavaScript/JavaScript.js"></script>
   
   <meta charset="utf-8" />
 <title>الذكاء الاصطناعي</title>

    
   
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>نموذج -التسجيل</h1>

<table>
    <tr>
        <td> اسم المستخدم</td>
        <td><input type="text" id="uName" name="uName" /></td>
        <td><input type="text" id="mUName" size="30" 
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>

    </tr>
     <tr>
        <td> اسم الشخصي</td>
        <td><input type="text" id="fName" name="fName" /></td>
         <td><input type="text" id="mFName" size="30" 
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
   </tr>
    <tr>
        <td> اسم العائله</td>
        <td><input type="text" id="lName" name="lName" /></td>
        <td><input type="text" id="mLName" size="30" 
    style="display:none; background-color:aliceblue; font-weight:bold;"
    disabled="disabled"/></td>
    </tr>
    <tr>
    <td> الهوايه</td>
    <td>
        <input type="checkbox" name="hobies" value="MachineLearning" /> تعلّم الآلة
        <input type="checkbox" name="hobies" value="DeepLearning" /> التعلّم العميق
        <input type="checkbox" name="hobies" value="NLP" /> معالجة اللغة
        <input type="checkbox" name="hobies" value="ComputerVision" /> الرؤية الحاسوبية
        <input type="checkbox" name="hobies" value="Other" /> مجالات أخرى
    </td>
        <td><input type="text" id="mHobies" size="30" 
    style="display:none; background-color:aliceblue; font-weight:bold;"
    disabled="disabled"/></td>

</tr>
    <tr>
        <td> البريد الالكتروني</td>
        <td><input type="text" id="email" name="email" /></td>
        <td><input type="text" id="mEmail" size="30"
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
   </tr>

    <tr>
        <td>كلمة المرور</td>
        <td><input type="password" id="pw" name="pw" /></td>
        <td><input type="text" id="mPassword" size="30"
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
    </tr>

    <tr>
        <td>تأكيد كلمة المرور</td>
        <td><input type="password" id="rePassword" /></td>
    </tr>

    <tr>
        <td>سنة الميلاد</td>
        <td>
            <select id="yearBorn" name="yearBorn">
                <option value="">اختر سنة الميلاد</option>
                <%= yearOptions %>
            </select>
        </td>
        <td><input type="text" id="mYearBorn" size="30"
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
    </tr>

    <tr>
        <td>الجنس</td>
        <td>
            <input type="radio" name="gender" value="male" /> ذكر
            <input type="radio" name="gender" value="female" /> أنثى
        </td>
        <td><input type="text" id="mGender" size="30"
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
    </tr>

    <tr>
        <td>المدينة</td>
        <td>
            <select id="mCity" name="mCity">
                <option value="">اختر المدينة</option>
                <%= cityOptions %>
            </select>
        </td>
        <td><input type="text" id="mCityMessage" size="30"
            style="display:none; background-color:aliceblue; font-weight:bold;"
            disabled="disabled"/></td>
    </tr>

    <tr>
        <td>رقم الهاتف</td>
        <td dir ="rtl">
        <select name="phone">
            <option value="050">050</option>
            <option value="051">051</option>
            <option value="052">052</option>
            <option value="053">053</option>
            <option value="054">054</option>
            <option value="055">055</option>
            <option value="057">057</option>
            <option value="058">058</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="077">077</option>
        </select>

            &nbsp;&nbsp; - &nbsp;&nbsp;

            <input type="text" name="phoneNum" id="phoneNum" size="20" />
        </td>
        <td>
            <input type="text" id="mPhone" name="mPhone" size="30" 
                style ="display: none; background-color:aliceblue; font-weight:bold;"
                disabied ="disabled"/>
        </td>
    </tr>

    <tr>
        <td colspan="2" style="text-align:center;">
            <input type="submit" name="btnSubmit" value="ارسال" onclick="return CheckForm();" />

        </td>
    </tr>

</table>

<%= st %>

</asp:Content>
