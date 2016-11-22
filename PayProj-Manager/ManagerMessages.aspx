<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerMessages.aspx.cs" Inherits="PayProj_Manager.ManagerMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblMessage" runat="server" CssClass="label label-info"></asp:Label>
    <asp:Label ID="lblError" runat="server" CssClass="label label-danger"></asp:Label>
    <asp:HyperLink href="ManagerMessageCompose.aspx" runat="server" ID="hypCompose" class="btn btn-default">Compose</asp:HyperLink>
    <asp:HyperLink href="ManagerMessageOutbox.aspx" runat="server" ID="hypOutBox" class="btn btn-default">Outbox</asp:HyperLink>
    <div class="caption">
    <h4>INBOX</h4>
        </div>
    <asp:GridView ID="gridMessages" runat="server" AutoGenerateColumns="False" OnRowDeleting="gridMessages_RowDeleting"
        OnSelectedIndexChanged="gridMessages_SelectedIndexChanged" CssClass="table table-hover table-striped grdViewTable">
        <Columns>
            <asp:BoundField DataField="MessageID" HeaderText="Message ID" />
            <asp:BoundField DataField="Date" HeaderText="Date and Time" />
            <asp:BoundField DataField="MessageFrom" HeaderText="From" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:CommandField SelectText="Reply..." ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>

    </asp:GridView>
</asp:Content>
