<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerMessageCompose.aspx.cs" Inherits="PayProj_Manager.ManagerMessageCompose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="form-group">
         <asp:Label ID="lblError" runat="server" CssClass="label label-danger"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            ShowMessageBox="True" ShowSummary="False" />

        <div class="input-group ">
            <span class="input-group-addon" style="width: 100px">To:</span>

            <asp:DropDownList ID="dropTo" runat="server" class="form-control" Width="265px"
                TabIndex="10">
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ErrorMessage="Please select any one option in the list." 
            ControlToValidate="dropTo" CssClass="mylabel" Font-Size="15px" ForeColor="red" 
            SetFocusOnError="True" InitialValue="---Select---">*Required Field</asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="input-group ">
            <span class="input-group-addon" style="width: 100px">Message:</span>
            <asp:TextBox ID="txtMessage" runat="server"
                Style="width: 265px; height: 133px;" class="form-control"
                TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red"
            ErrorMessage="Please Enter the Message." ControlToValidate="txtMessage" CssClass="mylabel" Font-Size="15px"
            SetFocusOnError="True">*Required Field</asp:RequiredFieldValidator>

        </div>
        <br />


        <asp:Button ID="btnSubmit" Class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        
       
    </div>
</asp:Content>
