<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Bakery_management.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
       <div class="row">
           <div class="col">
             
               <table class="auto-style1">
                   <tr>
                       <td style="background-color:lightpink" class="btn"><i class="fa-solid fa-bars"></i> Shop By Category</td>
                   </tr>
                   <tr>
                       <td>
                           <asp:LinkButton class="btn " ID="LinkButton8" runat="server">Chocolate Cake</asp:LinkButton>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:LinkButton  class="btn  " ID="LinkButton9" runat="server">Base Cake</asp:LinkButton>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:LinkButton class="btn  " ID="LinkButton10" runat="server">FlourLess Cake</asp:LinkButton>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:LinkButton class="btn  " ID="LinkButton11" runat="server">Sweet</asp:LinkButton>
                       </td>
                   </tr>
               </table>
           </div>
           <div class="col"><img  style="position: relative;width:430px;height:450px" src="images/cake/chef1.jpeg" /></div>
           <div class="col"><img  style="position: relative;top:10%;width:900px;height:400px " src="images/cake/OIP%20(1).jpeg" /></div>
               </div>
</asp:Content>
