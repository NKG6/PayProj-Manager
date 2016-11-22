<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerWelcome.aspx.cs" Inherits="PayProj_Manager.ManagerWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="form-group">
     <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
  <asp:Label ID="lblWelcome" runat="server" 
        Style="position:absolute;top:123px; left:14px;" Font-Bold="True" 
        ForeColor="Green" Font-Names="Tahoma" Font-Size="12px">Welcome to Manager!!</asp:Label>
    </div>

</asp:Content>
