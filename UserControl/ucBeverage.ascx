<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBeverage.ascx.cs" Inherits="de1.UserControl.ucBeverage" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="BeverageDataSoucre">

    <ItemTemplate>
         <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
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
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="BeverageDataSoucre" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages">
</asp:EntityDataSource>

