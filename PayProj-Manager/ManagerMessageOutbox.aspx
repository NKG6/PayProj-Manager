<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerMessageOutbox.aspx.cs" Inherits="PayProj_Manager.ManagerMessageOutbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">    
            <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        class="label label-danger"></asp:Label>
    <asp:Label ID="lblMessage" runat="server" class="label label-info"></asp:Label>
    <asp:HyperLink href="ManagerMessageCompose.aspx" runat="server" ID="hypCompose" class="btn btn-default">Compose</asp:HyperLink>
    <asp:HyperLink href="ManagerMessages.aspx" runat="server" ID="hypInBox" class="btn btn-default">Inbox</asp:HyperLink>
    <div class="caption">
    <h4>OUTBOX</h4>
        </div>
        <asp:GridView ID="gridMessages" runat="server" CssClass="table table-hover table-striped grdViewTable"  
        AutoGenerateColumns="False" onrowdeleting="gridMessages_RowDeleting" 
        Caption="Outbox" >
        <Columns>
            <asp:BoundField DataField="MessageID" HeaderText="Message ID" />
            <asp:BoundField DataField="Date" HeaderText="Date and Time" />
            <asp:BoundField DataField="MessageTo" HeaderText="To" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    </div> 

    
    
</asp:Content>
