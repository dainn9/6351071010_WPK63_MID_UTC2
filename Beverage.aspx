<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Beverage.aspx.cs" Inherits="de1.Beverage1" %>
<%@ Register src="~/UserControl/ucBeverage.ascx" tagname="ucBeverage" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucBeverage ID="ucBeverage1" runat="server" />
</asp:Content>
