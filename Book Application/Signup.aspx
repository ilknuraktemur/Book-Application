<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication8.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:285px;margin: auto; margin-top:50px">
        <div class="left">
            <asp:Panel ID="pnlsignup" runat="server">
                <div class="quick-req">
                    <div class="up">
                        Sign Up
                    </div>
                    <div class="down">
                          <div class="user-fname">
                        <span>First Name:</span>
                        <asp:TextBox ID="txtFname" CssClass="textbox" runat="server" />
                            </div>
                        <div class="user-lname">
                        <span>Last Name:</span>
                        <asp:TextBox ID="txtLname" CssClass="textbox" runat="server" />
                            </div>
                        <div class="eposta">
                        <span>E-posta:</span>
                        <asp:TextBox ID="txtEposta" CssClass="textbox" runat="server" />
                            </div>
                        <div class="user">
                        <span>User Name:</span>
                        <asp:TextBox ID="txtUsername" CssClass="textbox" runat="server" />
                            </div>
                        <div class="password">
                        <span>Password:</span>
                        <asp:TextBox ID="txtpsw" CssClass="textbox" runat="server" TextMode="password" />
                            </div>
                      
                        
                                                <a href="/" class="btnSignIn">Cancel</a>

                        <asp:Button ID="btnsign" CssClass="btnsign" Text="Sign Up" runat="server" OnClick="btnsign_Click"  />

                        <asp:Label ID="lblres" Text="" runat="server" />                    
                        </div>
                        </div>
            </asp:Panel>
            <asp:Panel ID="pnlcase" runat="server" style="background-color:#fff;padding:10px;">
                <asp:Label ID="lblcase" Text="" runat="server" /><br />
                <a href="/">Go to Home Page</a>
            </asp:Panel>
                
            </div>
            </div>
                                        


    </form>
</body>
</html>
