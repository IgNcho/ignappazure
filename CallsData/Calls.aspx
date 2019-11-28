<%@ Page Title="Beyond Trafficking - Calls Data - Calls" Language="C#" MasterPageFile="~/MasterPages/Calls.master" AutoEventWireup="true" CodeFile="Calls.aspx.cs" Inherits="CallsData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section style="color: rgb(0, 0, 0); font-family: Times New Roman; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 750px; float: left;">
    Listed below is a database containing the number of calls recieved by the National Human Trafficking Hotline by state in 20015.<br />
  </section>
  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="States" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
  <Columns>
    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
    <asp:BoundField DataField="States" HeaderText="States" ReadOnly="True" SortExpression="States" />
    <asp:BoundField DataField="Number_of_calls" HeaderText="Number_of_calls" SortExpression="Number_of_calls" />
  </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Beyond TraffikingConnectionString1 %>" DeleteCommand="DELETE FROM [CallsDB] WHERE [States] = @States" InsertCommand="INSERT INTO [CallsDB] ([States], [Number of calls]) VALUES (@States, @Number_of_calls)" ProviderName="<%$ ConnectionStrings:Beyond TraffikingConnectionString1.ProviderName %>" SelectCommand="SELECT [States], [Number of calls] AS Number_of_calls FROM [CallsDB]" UpdateCommand="UPDATE [CallsDB] SET [Number of calls] = @Number_of_calls WHERE [States] = @States">
  <DeleteParameters>
    <asp:Parameter Name="States" Type="String" />
  </DeleteParameters>
  <InsertParameters>
    <asp:Parameter Name="States" Type="String" />
    <asp:Parameter Name="Number_of_calls" Type="Int32" />
  </InsertParameters>
  <UpdateParameters>
    <asp:Parameter Name="Number_of_calls" Type="Int32" />
    <asp:Parameter Name="States" Type="String" />
  </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

