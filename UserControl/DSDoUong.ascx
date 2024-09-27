<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSDoUong.ascx.cs" Inherits="de1.UserControl.DSDoUong" %>
 <hr />
 <b> Beverage Category Available</b>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="DSDoUongDataSource" Width="276px">

    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("CatName") + "(" + Eval("Beverages.Count") + ")" %>' NavigateUrl='<%# "~/Beverage.aspx?id=" + Eval("CatID") %>' ></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="DSDoUongDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" Include="Beverages">
</asp:EntityDataSource>

