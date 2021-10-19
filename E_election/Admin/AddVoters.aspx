<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVoters.aspx.cs" Inherits="E_election.Admin.AddVoters" %>

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
    </style>
</head>
<body>
    <form id="form_login" runat="server">
        <div id="mainDiv">
            <div id="layout1">
                <asp:Image ID="ImgLogin" runat="server" ImageUrl="~/Images/Login3.jpg" AlternateText="hi" Height="871px" Width="411px" />
            </div>
            <div id="layout2">
                <asp:TextBox ID="txtFName" class="txtbox" runat="server" Height="51px" Width="300px" placeholder="Enter First name" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFName" ErrorMessage="Alphabets only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtLname" class="txtbox" runat="server" Height="51px" Width="300px" placeholder="Enter Last name" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtLname" ErrorMessage="Alphabets only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtCNumber" class="txtbox" runat="server" Height="51px" Width="300px" placeholder="Enter your contact number" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled" OnTextChanged="txtCNumber_TextChanged"></asp:TextBox>
                <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCNumber" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCNumber" ErrorMessage="Enter correct number" ForeColor="Red" ValidationExpression="^[3-9]\d{9}$"></asp:RegularExpressionValidator>
                <br />

                <asp:TextBox ID="txtEmailid"  class="txtbox" runat="server" Height="51px" Width="298px" placeholder="Enter Your email id" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox>
                
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPanNumber" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailid" Display="Dynamic" ErrorMessage="Enter correct email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtPanNumber" class="txtbox" runat="server" Height="51px" Width="300px" placeholder="Enter your pan number" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailid" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPanNumber" Display="Dynamic" ErrorMessage="Enter valid Pan number" ForeColor="Red" ValidationExpression="[A-Z]{5}[0-9]{4}[A-Z]{1}"></asp:RegularExpressionValidator>
                <br />
                 <asp:TextBox ID="txtOtp" class="txtbox" runat="server" Height="51px" Width="300px" placeholder="Enter OTP here" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtOtp" ErrorMessage="Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />

                <asp:Button ID="BtnGenerateOtp" CssClass="Btn" runat="server" Text="GenerateOtp" Height="37px" Width="135px" Font-Names="Century Gothic" OnClick="BtnGenerateOtp_Click"/>

                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Font-Names="Century Gothic" Height="37px" Width="135px" OnClick="BtnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
