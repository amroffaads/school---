<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="ai.HTML.ShowTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>جدول المستخدمين</title>
    <style>
        .adminTable { border-collapse: collapse; margin: 15px auto; font-size: 12pt; direction: ltr; }
        .adminTable th, .adminTable td { border: 1px solid black; padding: 5px; text-align: center; }
        .backLink { text-align: center; font-size: 18pt; margin: 20px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>جدول المستخدمين</h1>
    <h3 style="text-align:center;"><%= msg %></h3>
    <%= st %>
    <div class="backLink"><a href="AdminPage.aspx">العودة إلى صفحة المسؤول</a></div>
</asp:Content>
