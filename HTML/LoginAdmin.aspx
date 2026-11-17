<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ai.HTML.LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>دخول المسؤول</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>دخول المسؤول</h1>
    <table style="width:40%; margin:auto;">
        <tr>
            <td>اسم المسؤول:</td>
            <td><input type="text" name="adminName" /></td>
        </tr>
        <tr>
            <td>كلمة المرور:</td>
            <td><input type="password" name="pw" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" name="submit" value="دخول" />
            </td>
        </tr>
    </table>
    <h3 style="text-align:center;"><%= msg %></h3>
</asp:Content>
