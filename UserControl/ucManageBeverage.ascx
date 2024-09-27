<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageBeverage.ascx.cs" Inherits="de1.UserControl.ucManageBeverage" %>
<style type="text/css">
    .auto-style1 {
        width: 246px;
    }
    .auto-style2 {
        width: 246px;
        height: 29px;
    }
    .auto-style3 {
        height: 29px;
    }
</style>
<from runat="server" defaultbutton="btnAddNew">

<table style="width: 100%;">
    <tr>
        <td class="auto-style1">Beverage Name</td>
        <td>
            <asp:TextBox ID="txtNameB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiName" runat="server" ErrorMessage="Tên đồ uống chưa nhập" ForeColor="Red" ControlToValidate="txtNameB"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Beverage Price</td>
        <td>
            <asp:TextBox ID="txtPriceB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiPrice" runat="server" ControlToValidate="txtPriceB" ErrorMessage="Giá đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Category</td>
        <td>
            <asp:DropDownList ID="DropDownListB" runat="server" DataSourceID="CategoryDataSource" DataTextField="CatName" DataValueField="CatName">
            </asp:DropDownList>
            <asp:EntityDataSource ID="CategoryDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" Select="it.[CatName]">
            </asp:EntityDataSource>
        </td>
    </tr>

    <tr>
    <td class="auto-style1">Beverage Discription</td>
    <td>
        <asp:TextBox ID="txtDiscrB" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDiscrB" ErrorMessage="Mô tả thông tin đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
</tr>

        <tr>
    <td class="auto-style2">Beverage Picture</td>
    <td class="auto-style3">
        <asp:FileUpload ID="FileUploadB" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUploadB" ErrorMessage="Hình ảnh đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
</tr>
        <tr>
    <td class="auto-style1" colspan="2"> 
        <asp:Button ID="btnAddNew" runat="server" Text="Add new" />
            </td>
    
</tr>

</table>
</from>

<hr />




<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ManageBeverageDataSoucre">
    <Columns>
         <asp:TemplateField  HeaderText="No.">
     <ItemTemplate>
      <%# Container.DataItemIndex+1 %>
  </ItemTemplate>
 </asp:TemplateField>

  <asp:TemplateField  HeaderText="Picture">
   <ItemTemplate>
       <asp:Image ID="Image1" Width="50px" runat="server" ImageUrl='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>' />
   </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField  HeaderText="Name">
       <ItemTemplate>
          <asp:HyperLink runat="server" NavigateUrl='<%# "~/Details.aspx?id=" + Eval("id") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
      </ItemTemplate>
 </asp:TemplateField>

  <asp:TemplateField>
      <ItemTemplate>
          <asp:Button ID="btnDelete" runat="server" Text="Delete" />
      </ItemTemplate>
  </asp:TemplateField>

  <asp:TemplateField>
       <ItemTemplate>
          <asp:Button ID="btnEdit" runat="server" Text="Edit" />
      </ItemTemplate>
  </asp:TemplateField>

    </Columns>
</asp:GridView>
<asp:EntityDataSource ID="ManageBeverageDataSoucre" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Beverages">
</asp:EntityDataSource>





