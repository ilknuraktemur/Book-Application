<%-- 

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="starratingsystem.aspx.cs" Inherits="starratingsystem" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .Star {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Rating ID="Rating1" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="lbresult" runat="server" ></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtreview" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="btnsubmit" OnClick="btnsubmit_Click" />
    </form>
</body>
</html>
--%>