<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="ai.HTML.Applications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>تطبيقاتي</title>
    <style>
        .appsTable {
            border-collapse: collapse;
            margin: 30px auto;
            width: 65%;
            font-size: 18pt;
        }

        .appsTable td {
            border: 1px solid black;
            padding: 18px;
            text-align: center;
        }

        .appLink {
            display: inline-block;
            background-color: #19c9c3;
            color: white;
            padding: 8px 20px;
            text-decoration: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>تطبيقاتي حسب مجالات الذكاء الاصطناعي</h1>
    <h3 style="text-align:center;"><%= msg %></h3>
    <%= st %>
</asp:Content>
