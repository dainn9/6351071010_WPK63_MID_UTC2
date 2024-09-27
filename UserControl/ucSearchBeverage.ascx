<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearchBeverage.ascx.cs" Inherits="de1.UserControl.ucSearchBeverage" %>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">Name</td>
        <td colspan="2"> 
            <asp:TextBox ID="txtName" runat="server" Width="361px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Price</td>
        <td class="auto-style3">
                <asp:TextBox ID="txtLowPrice" runat="server" Width="161px"></asp:TextBox>
        </td>
        
        <td class="auto-style4">
              <asp:TextBox ID="txtUPrice" runat="server" Width="161px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="search" runat="server" Text="Search" />
        </td>
    </tr>
</table>
<br />
<hr />
<b> 
    Search Result
</b>
<br />
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="searchDataSource">
 
    <ItemTemplate>
               <asp:Label ID="NameLabe" runat="server" Text='<%# Eval("Name") %>' />
         <br />
        <div>
             <asp:Image ID="Image1" Width="50px" runat="server" ImageUrl='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>' />
        </div>
       
        <br />
       
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Details.aspx" %>'>View Details</asp:HyperLink>
        <br />
<br /></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <EmptyDataTemplate>
        No Beverages founded!
    </EmptyDataTemplate>
   
</asp:ListView>
<asp:EntityDataSource ID="searchDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages"
    where="it.Name like '%' +@TName + '%' and it.Price >= @LowPrice and it.Price <= @UpPrice "
    >
    <WhereParameters>
       <asp:ControlParameter ControlID="txtName" PropertyName="Text" Name="TName" Type="String" />
      <asp:ControlParameter ControlID="txtLowPrice" Name="LowPrice" PropertyName="Text" Type="Decimal" />
      <asp:ControlParameter ControlID="txtUPrice" Name="UpPrice" PropertyName="Text" Type="Decimal" />
  </WhereParameters>
</asp:EntityDataSource>

