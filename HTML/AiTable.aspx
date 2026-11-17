<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AiTable.aspx.cs" Inherits="ai.HTML.AiTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>معلومات الذكاء الاصطناعي</title>
    <style>
        .aiTable {
            border-collapse: collapse;
            margin: 30px auto;
            width: 95%;
            direction: rtl;
            font-size: 15pt;
        }

        .aiTable th, .aiTable td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        .aiTable th {
            background-color: #19c9c3;
            color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>جدول معلومات الذكاء الاصطناعي</h1>
    <%= st %>
</asp:Content>
