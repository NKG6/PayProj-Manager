<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="GeneratePayslip.aspx.cs" Inherits="PayProj_Manager.GeneratePayslip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            <asp:Label ID="lblError" runat="server" class="label label-danger"></asp:Label>
            <div class="row">
                <h3>
                    <asp:Label ID="lblPageTitle" runat="server" Text="Generate Payslip:" CssClass="label label-info"></asp:Label>
                </h3>
            </div>
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Employee:</span>
                    <%--<asp:Label ID="LabelEmployee" runat="server" Text="Employee:">Employee:</asp:Label>--%>
                    <asp:Label ID="lblEmployee" CssClass="form-control" runat="server"></asp:Label>
                </div>
            </div> <br />
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" id="lblMonth1">Month:</span>

                    <%-- <asp:Label ID="lblMonth" runat="server" Text="Month:"></asp:Label>--%>

                    <asp:DropDownList ID="dropMonth" runat="server" class="form-control"
                        AutoPostBack="True"
                        OnSelectedIndexChanged="dropMonth_SelectedIndexChanged">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dropYear" runat="server" Class="form-control"
                        AutoPostBack="True"
                        OnSelectedIndexChanged="dropYear_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div> <br />
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" id="inplblbasicsalry">Basic Salary :</span>
                    <%--     <asp:Label ID="LabelBasicSalary" runat="server" Text="Basic Salary:"></asp:Label>--%>
                    <asp:Label ID="lblBasicSalary" CssClass="form-control" runat="server"></asp:Label>
                </div>
            </div> <br />
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" id="inplblSalaryPerDay">Salary Per Day</span>
                    <%--<asp:Label ID="LabelSalaryPerDay" runat="server" Text="Salary Per Day:"></asp:Label>--%>
                    <asp:Label ID="lblSalaryPerDay" CssClass="form-control" runat="server"></asp:Label>
                </div>
            </div> <br />
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" id="inplblNoOfLeaves" runat="server">No. of Leaves</span>
                    <%--<asp:Label ID="LabelNoOfLeaves" runat="server" Text="No. of Leaves:"></asp:Label>--%>
                    <asp:TextBox ID="txtNoOfLeaves" runat="server"
                        AutoPostBack="True" CssClass="form-control"
                        OnTextChanged="txtNoOfLeaves_TextChanged">0</asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    class="label label-danger"
                    ControlToValidate="txtNoOfLeaves"
                    SetFocusOnError="True">Please Enter User Name.</asp:RequiredFieldValidator>

                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="txtNoOfLeaves" CssClass="label label-danger" MaximumValue="31"
                    MinimumValue="0" SetFocusOnError="True" Type="Integer">Value should be between 0 and 31</asp:RangeValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                    ShowMessageBox="True" ShowSummary="False" />


            </div> <br />
            <div class="row">

                <div class="input-group">
                    <span class="input-group-addon" runat="server" id="inplblDeductionForLeaves">Deduction For Leaves</span>
                    <asp:Label ID="lblDeductionForLeaves" Class="form-control" runat="server"></asp:Label>
                    <%--  <asp:Label ID="LabelDeductionForLeaves" runat="server" Text="Deduction for Leaves:"></asp:Label> --%>
                </div>
            </div> <br />
            <div class="row">
                <div class="input-group">
                    <span class="input-group-addon" runat="server" id="inplblNetsalary">Net Salary</span>
                    <asp:Label ID="lblNetSalary" Class="form-control" runat="server"></asp:Label>
                    <%--  <asp:Label ID="LabelNetSalary" runat="server" Text="Net Salary:"></asp:Label> --%>
                </div>
            </div> <br />
            <div class="row">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-success" TabIndex="80" />

            </div>
        </div>
    </div>
</asp:Content>
