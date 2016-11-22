<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="Payslips.aspx.cs" Inherits="PayProj_Manager.Payslips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
    <div class="input-group ">
        <span class="input-group-addon" style="width: 100px">Employee:</span>   
        <asp:DropDownList ID="dropEmployee" runat="server" Width="265px"         
         AutoPostBack="True" class="form-control"
        onselectedindexchanged="dropEmployee_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
        <br />
    <asp:Label ID="lblError" runat="server" class="label label-danger"></asp:Label>
     
        <div class=" form-group">
        <h3><asp:Label ID="lblMessage" runat="server" class="label label-info label-md"></asp:Label></h3>
        <asp:LinkButton ID="lnkGeneratePayslip" runat="server" 
        class="btn btn-md btn-default" Font-Bold="True" onclick="lnkGeneratePayslip_Click" 
        Visible="False">Generate Payslip...</asp:LinkButton>
         </div>
        <div class="form-group">
     <asp:GridView ID="gridPayslips" runat="server" 
         CssClass="table table-hover table-striped grdViewTable" 
        AutoGenerateColumns="False" onrowdeleting="gridPayslips_RowDeleting" 
        onrowcommand="gridPayslips_RowCommand">
        <Columns>
            <asp:BoundField DataField="PayslipID" HeaderText="Payslip ID" />
            <asp:BoundField DataField="MonthAndYear" HeaderText="Month and Year" />
            <asp:BoundField DataField="GeneratedOn" HeaderText="Generated On" />
            <asp:BoundField DataField="BasicSalary" HeaderText="Basic Salary" />
            <asp:BoundField DataField="NoofLeaves" HeaderText="No. of Leaves." />
            <asp:BoundField DataField="SalaryPerDay" HeaderText="Salary Per Day" />
            <asp:BoundField DataField="DeductionForLeaves" HeaderText="Deduction For Leaves" />
            <asp:BoundField DataField="NetSalary" HeaderText="Net Salary" />
            <asp:ButtonField CommandName="Print" Text="Print" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        
    </asp:GridView>
    </div>
    </div>
</asp:Content>
