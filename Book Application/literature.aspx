<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="literature.aspx.cs" Inherits="WebApplication8.literature" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bookcat">
                         <asp:ListView ID="lstbook" runat="server">
                             <ItemTemplate>
                                    <div class="books">
                        <h3> <asp:Label Text='<%#Eval("BookName") %>' runat="server" /> by 
                            <asp:Label Text='<%#Eval("BWriterFname") %>' runat="server" />
                            <asp:Label Text='<%#Eval("BWriterLname") %>' runat="server" />
                        </h3>
                                           <asp:Image ID="Image1" Height="200px" Width="200px" CssClass="book.image" runat="server" ImageUrl='<%#:"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BookImage")) %>' />
                         <p>   <asp:Label Text='<%#Eval("BookTopic") %>' runat="server" /></p></br>
                
                                       
                              <asp:Label Text='<%#Eval("PublishTime") %>' runat="server" />
                                        
                            <asp:Button ID="BtnRate" CssClass="BtnRate" Text="Rate this book »" runat="server" OnClick="BtnRate_Click"/><br />
                                        </div>
                             </ItemTemplate>
                         </asp:ListView>
                      
                         </div>
  
</asp:Content>
