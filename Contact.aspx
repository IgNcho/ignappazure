<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/BeyondTrafficking.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">

    .auto-style5 {
      height: 74px;
      }
    .auto-style6 {
      text-decoration: none;
    }
    .auto-style7 {
    width: 39px;
    background-color: #FFFFFF;
  }
    .auto-style9 {
    width: 506px;
    background-color: #FFFFFF;
  }
    .auto-style11 {
    width: 189px;
    background-color: #FFFFFF;
  }
    .auto-style12 {
      width: 189px;
      height: 3px;
    background-color: #FFFFFF;
  }
    .auto-style13 {
      width: 506px;
      height: 3px;
    background-color: #FFFFFF;
  }
    .auto-style14 {
      width: 39px;
      height: 3px;
    background-color: #FFFFFF;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <br />
  <table>
    <tr>
      <td class="auto-style11">
        <asp:Label ID="VisitorName" runat="server" Text="Name"></asp:Label>
              &nbsp;&nbsp;
              </td>
      <td class="auto-style9">
        <asp:TextBox ID="Name" runat="server" Width="174px"></asp:TextBox>
      </td>
      <td class="auto-style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter Your Name">*</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style11">Phone Number</td>
      <td class="auto-style9">
        <asp:TextBox ID="PhoneNumber" runat="server" Width="174px" style="margin-bottom: 0px"></asp:TextBox>
      </td>
      <td class="auto-style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PhoneNumber" CssClass="ErrorMessage" ErrorMessage="Enter your phone number" Display="Dynamic">*</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style11">
        Mailing Address</td>
      <td class="auto-style9">
        <asp:TextBox ID="MailingAddress" runat="server" Width="176px"></asp:TextBox>
      </td>
      <td class="auto-style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MailingAddress" CssClass="ErrorMessage" ErrorMessage="Enter you mailing address" Display="Dynamic">*</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style12">
        <asp:Label ID="EmailAdd" runat="server" Text="Email Address"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />
      </td>
      <td class="auto-style13">
        <asp:TextBox ID="EmailAddress" runat="server" Width="175px"></asp:TextBox>
      </td>
      <td class="auto-style14">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter your email address" Display="Dynamic">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style11">
        Re-enter you email address</td>
      <td class="auto-style9">
        <asp:TextBox ID="ReenterEmail" runat="server" Width="176px"></asp:TextBox>
        </td>
      <td class="auto-style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ReenterEmail" CssClass="ErrorMessage" ErrorMessage="Re-enter your email address">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ReenterEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email addresses do not match">*</asp:CompareValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style11">
        Subject</td>
      <td class="auto-style9">
        <a href="Default.aspx" class="auto-style6"></a> 
        <asp:DropDownList ID="SubjectDropDownList" runat="server" >
          <asp:ListItem>General</asp:ListItem>
          <asp:ListItem>Request Speaker</asp:ListItem>
          <asp:ListItem>Partnership</asp:ListItem>
        </asp:DropDownList>
        </td>
      <td class="auto-style7">
        &nbsp;</td>
    </tr>
    <tr>
      <td class="auto-style11">
        Message</td>
      <td class="auto-style9">
        <a href="Default.aspx" class="auto-style6"></a> 
        <asp:TextBox ID="Message" runat="server" Height="184px" TextMode="MultiLine" Width="432px"></asp:TextBox>
      </td>
      <td class="auto-style7">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Message" CssClass="ErrorMessage" ErrorMessage="Send a message">*</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td class="auto-style5" colspan="3">
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        <asp:Label ID="SubmitMessage" runat="server"></asp:Label>
      </td>
    </tr>
    <tr>
      <td class="auto-style5" colspan="3">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
      </td>
    </tr>
  </table>

</asp:Content>

