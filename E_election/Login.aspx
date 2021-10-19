<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_election.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
            body{
                background-color:#F5F5F5;
            }
    #mainDiv { 
     
        width: 800px;
       overflow:hidden;
       border-radius:20px;

    }
    #layout1    {
        width: 50%;
        height: 655px;
        background: red;
        float: left;
       
    }

    #layout2 {
        width: 66%;
        background-color:white;
        height: 654px;
      
       /**/ margin-left: 400px;
    
    }

  
    #form_login {
    left      : 50%;
    top       : 50%;
    position  : absolute;
    transform : translate(-50%, -50%);
}
    /*#txtEmail
    {
        margin-left:50px;
        margin-top:200px;
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
          

    }*/
    #txtPanNumber
    {
        margin-left:50px;
        margin-top:250px;
        border-radius: 15px;
         outline: none;
    }
    #BtnSubmit
    {
       background-color: white;
  
  color: black;
 
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
  margin-left:50px;
   margin-top:30px;
    }
    </style>
</head>
<body>
    <form id="form_login" runat="server">
        <div id="mainDiv">
           <div id="layout1">
               <asp:Image ID="ImgLogin" runat="server" ImageUrl="~/Images/Login3.jpg" AlternateText="hi" Height="682px" Width="411px" /> 
            </div>
            <div id ="layout2">
                <asp:TextBox ID="txtPanNumber" runat="server" Height="51px" Width="251px" placeholder="Pan number" Font-Names="Century Gothic" Font-Size="16pt" AutoCompleteType="Disabled"></asp:TextBox><br />
                <asp:Button ID="BtnSubmit" runat="server" Text="Generate Otp" Font-Names="Century Gothic" Height="37px" OnClick="BtnSubmit_Click" Width="135px" />
            </div>
        </div>
    </form>
</body>
</html>
