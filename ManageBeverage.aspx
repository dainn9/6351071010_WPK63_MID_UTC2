<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageBeverage.aspx.cs" Inherits="de1.ManageBeverage" %>
<%@ Register src="~/UserControl/ucManageBeverage.ascx" tagname="ucManageBeverage" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageBeverage ID="ucManageBeverage1" runat="server" />
</asp:Content>
