<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateElection.aspx.cs" Inherits="E_election.Admin.GenerateElection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        body {
            background-color: #F5F5F5;
        }

        #mainDiv {
            width: 792px;
            overflow: hidden;
            border-radius: 20px;
            height: 100%;
        }

        #layout1 {
            width: 50%;
            height: 655px;
            background: red;
            float: left;
        }

        #layout2 {
            width: 66%;
            background-color: white;
            height: 100%;
            /**/ margin-left: 400px;
        }


        #form_login {
            left: 50%;
            top: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
        }

        #txtFName {
            margin-left: 50px;
            margin-top: 150px;
            border-radius: 15px;
            outline: none;
            /* 
    background-color: transparent;
    color: #eeeeee;
    outline: none;
    outline-style: none;
    border-top: none;
    border-left: none;
    border-right: none;
    border-bottom: solid #eeeeee 1px;
    padding: 3px 10px;
           */
        }

        #txtPanNumber {
            margin-left: 50px;
            margin-top: 30px;
            border-radius: 15px;
            outline: none;
        }

        #BtnSubmit {
            background-color: white;
            color: black;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            margin-left: 50px;
            margin-top: 30px;
        }
        .Btn{
            background-color: white;
            color: black;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            margin-left: 50px;
            margin-top: 30px;
        }
        #txtLname {
           
        }
        .txtbox
        {
             margin-left: 50px;
            margin-top: 30px;
            border-radius: 15px;
            outline: none;
        }
        .Btn{
            background-color: white;
            color: black;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            margin-left: 50px;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/GenerateElection.aspx">HyperLink</asp:HyperLink>
              <div id="mainDiv">
          
               
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No records has been added." Width="564px" Height="240px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Customer Id" />
        <asp:BoundField DataField="CandidateName" HeaderText="Name" />
        <asp:BoundField DataField="CandidateNumber" HeaderText="Country" />
        <asp:BoundField DataField="CandidateEmailAddress" HeaderText="Country" />

    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
                <br />
               <asp:TextBox ID = "txtStartdate" class="txtbox" runat="server" Height="57px" Width="192px"  placeholder="Start Date"/> <asp:RegularExpressionValidator runat="server" ForeColor = "Red" ControlToValidate="txtStartdate"
            ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
            ErrorMessage="Invalid date format."/>
                <br/>
                 <asp:TextBox ID = "txtExpDate" class="txtbox" runat="server" Height="57px" Width="192px" placeholder="End Date" /><asp:RegularExpressionValidator runat="server" ForeColor = "Red" ControlToValidate="txtExpDate"
            ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
            ErrorMessage="Invalid date format."/>
                <br />
                <asp:TextBox ID="txtVoteTitle" class="txtbox" runat="server" Height="57px" Width="192px" placeholder="Vote Title"></asp:TextBox>
                <br />
                <asp:Button ID="BtnCreate" runat="server" CssClass="Btn" OnClick="BtnCreate_Click2" Text="Create" />
               
                </div>
        
        </div>
        </div>
    </form>
</body>
</html>
