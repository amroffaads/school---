<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ai.HTML.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <script src="../JavaScript/JavaScript.js"></script>
    <title>تسجيل الدخول</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center;">تسجيل الدخول</h1>
    <table style="width:40%; margin:auto;">
        <tr>
            <td>اسم المستخدم:</td>
            <td><input type="text" id="uName" name="uName" /></td>
            <td><input type="text" id="mUName" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td>كلمة المرور:</td>
            <td><input type="password" id="pw" name="pw" /></td>
            <td><input type="text" id="mPassword" size="30" style="display:none; background-color:aliceblue; font-weight:bold;" disabled="disabled" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" name="submit" value="دخول" onclick="return CheckLogin();" />
            </td>
        </tr>
    </table>
    <h3 style="text-align:center;"><%= msg %></h3>
</asp:Content>
