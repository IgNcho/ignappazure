<%@ Page Title="Beyond Trafficking Homepage" Language="C#" MasterPageFile="~/MasterPages/BeyondTrafficking.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  
   <style type="text/css">
    .auto-style4 {
      font-size: large;
    }
    .auto-style5 {
      text-decoration: none;
    }
    .auto-style6 {
      text-align: center;
    }
    .auto-style7 {
      font-size: xx-large;
    }  </style>

   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br />
        <br />
        <h1 class="auto-style6"> 
         Beyond Trafficking <br />is a movement uniting leaders, thinkers, and activists 
        to end modern day slavery.
      </h1>
        <br />
 <div>
  <h3>We focus on:</h3>
  <div>
    <p> 1. Spreading and supporting human trafficking awareness <br/>
    2. Bringing people together through local events, conferences and workshops to eliminate silos <br/>
        3. Promoting organizations and businesses at the forefront of abolishing modern day slavery </p>
  </div>
  <h3>Beyond Conference</h3>
  <div>
    <p> Mark your calendars for our conference taking place April 14-16, 2017. Sign up for our mailing list to receive updates as they become available. </p>

  </div>
  
</div>
    

</asp:Content>








<asp:Content ID="Content3" runat="server" contentplaceholderid="btClientScript">
  <script type="text/javascript">
    $(function () {
      $('header').slideUp('slow').slideDown('slow');
    });
  </script>
</asp:Content>









