<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Search Beverage.aspx.cs" Inherits="de1.Search_Beverage" %>
<%@ Register src="UserControl/ucSearchBeverage.ascx" tagname="ucSearchBeverage" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSearchBeverage ID="ucSearchBeverage1" runat="server" />
</asp:Content>
