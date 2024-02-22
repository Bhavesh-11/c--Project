<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Bakery_management.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150px" src="images/imgs/generaluser.png" />
                                 </center>

                       </div>
                        </div>
                                               <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member login</h3>
                                </center>

                          </div>
                       </div>
                                               <div class="row">
                            <div class="col">
                                <center>
                                    <hr >
                                </center>

</div>
                       </div> 
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <br>
                                <label>Password</label>
<div class="form-group">

    <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Password " TextMode="Password"></asp:TextBox>
</div>
<br>

           <div class="d-grid gap-2 col-6 mx-auto">
   <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Log In " OnClick="Button1_Click1" />
              <a href="usersignin.aspx"><input class="btn btn-success btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
</div>
                               

</div>
                       </div>
                    </div>
                </div>
                <a href="homepage.aspx"><<< Back to Home</a><br /> <br /> 
            </div>
        </div>
    </div>
</asp:Content>
