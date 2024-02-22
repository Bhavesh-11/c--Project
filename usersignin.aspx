<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignin.aspx.cs" Inherits="Bakery_management.usersignin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <style>
       .container {
           margin-top: 5%; /* Adjust this value as needed */
       }
   </style>
       <div  class="container">
     <div class="row">
        <div class="col-md-8 mx-auto">
           <div class="card">
              <div class="card-body">
                 <div class="row">
                    <div class="col">
                       <center>
                           <img width="50px" src="images/OIP%20(3).jpeg" />
                         
                       </center>
                    </div>
                 </div>
                 <div class="row">
                    <div class="col">
                       <center>
                          <h4>Member Sign Up</h4>
                       </center>
                    </div>
                 </div>
                 <div class="row">
                    <div class="col">
                       <hr>
                    </div>
                 </div>
                 <div class="row">
                    <div class="col-md-6">
                       <label>Full Name</label>
                       <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Full Name"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <label>Date of Birth</label>
                       <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="dob" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                       </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="col-md-6">
                       <label>Contact No</label>
                       <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <label>Email ID</label>
                       <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Email ID" TextMode="Email" ></asp:TextBox>
                       </div>
                    </div>
                 </div>
                 <div class="col">
 <label>Address</label>
   <div class="form-group">
      <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Address" ></asp:TextBox>
   </div>
</div>
                    
                 <div class="row">
                    <div class="col">
                       <center>
                          <span class="badge badge-pill badge-info">Login Credentials</span>
                       </center>
                    </div>
                 </div>
                  <div class="row">
                    <div class="col-md-6">
                       <label>User ID</label>
                       <div class="form-group">
                          <asp:TextBox class="form-control" ID="userid" runat="server" placeholder="User ID"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <label>Password</label>
                       <div class="form-group">
                          <asp:TextBox class="form-control" ID="password" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                       </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="col">
                       <div class="form-group">
                          <asp:Button class="btn btn-success btn-block btn-lg" ID="btnsign" runat="server" Text="Sign Up" OnClick="btnsign_Click"  />
                       </div>
                    </div>
                 </div>
              </div>
           </div>
           <a href="homepage.aspx"><< Back to Home</a><br><br>
        </div>
     </div>
  </div>
</asp:Content>
