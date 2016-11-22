<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerEmployees.aspx.cs" Inherits="PayProj_Manager.ManagerEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
        <div  class="form-group">
            

        <asp:GridView ID="gridEmployees" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped grdViewTable">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" ItemStyle-CssClass="visible-xs visible-lg visible-sm visible-md "      HeaderStyle-CssClass="visible-xs visible-sm visible-lg visible-md" />
                <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-CssClass="visible-xs visible-sm visible-lg visible-md"      HeaderStyle-CssClass="visible-xs visible-sm visible-lg visible-md"/>
                <asp:BoundField DataField="Phone" HeaderText="Phone" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs"/>
                <asp:BoundField DataField="Designation" HeaderText="Designation" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                <asp:BoundField DataField="LevelID" HeaderText="Level" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                <asp:BoundField DataField="Password" HeaderText="Password" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblError" runat="server" CssClass="mylabel"
            Style="position: absolute; top: 59px; left: 13px;" Font-Bold="True"
            ForeColor="Red"></asp:Label>
    </div>
        
</asp:Content>
