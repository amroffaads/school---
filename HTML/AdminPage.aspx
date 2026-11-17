<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ai.HTML.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>صفحة المسؤول</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>صفحة المسؤول</h1>
    <h3 style="text-align:center;"><%= msg %></h3>
    <div style="text-align:center; font-size:18pt; line-height:2;">
        [<a href="ShowTable.aspx">عرض جدول المستخدمين</a>]
        [<a href="SimpleQuery2.aspx">البحث عن مستخدمين</a>]
        [<a href="DeleteUser.aspx">حذف مستخدم</a>]
    </div>
</asp:Content>
