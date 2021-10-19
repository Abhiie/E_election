<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateCandidate.aspx.cs" Inherits="E_election.Admin.GeneratePoll" %>

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
  

    #layout2 {
        width: 800px;
    background-color: white;
    height: 100%;
    left: 50%;
    top: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
    }

  
    #form_CreateCan{
    left      : 50%;
    top       : 10%;
    position  : absolute;
    transform : translate(-50%, -50%);
}
    #txtUsername
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
           */

    }
    #txtPanNumber
    {
        margin-left:50px;
        margin-top:30px;
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
    #txtPassword{
      margin-left:50px;
      margin-top:30px;
      border-radius: 15px;
      outline: none;
    }
    .lbl
    {
        margin-left:50%;
    }
    .txtbox
        {
             margin-left: 50px;
            margin-top: 30px;
            border-radius: 15px;
            outline: none;
        }
         .auto-style2 {
             --bs-table-bg: #cfe2ff;
             --bs-table-striped-bg: #c5d7f2;
             --bs-table-striped-color: #000;
             --bs-table-active-bg: #bacbe6;
             --bs-table-active-color: #000;
             --bs-table-hover-bg: #bfd1ec;
             --bs-table-hover-color: #000;
             color: #000;
             border-color: #bacbe6;
             width: 150px;
             height: 390px;
         }
    </style>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>
<body>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <form id="form_CreateCan" runat="server">
        <div>
              <div id="mainDiv">
          
            <div id ="layout2">
               
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No records has been added."
        Width="534px" Height="275px">
        <Columns>
           <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
        <asp:BoundField DataField="CandidateNumber" HeaderText="CandidateNumber" SortExpression="CandidateNumber" />
        <asp:BoundField DataField="CandidateEmailAddress" HeaderText="CandidateEmailAddress" SortExpression="CandidateEmailAddress" />
         <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
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
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse;width: 450px" class="table-primary">
    <tr class="table-primary">
        <td class="auto-style2">
            Name:<br />
            <asp:TextBox ID="txtName" cssClass="txtbox" runat="server" Width="140" />
            Candidate Number:<br />
            <asp:TextBox ID="txtCountry"  cssClass="txtbox" runat="server" Width="140" />
            Email:<br />
            <asp:TextBox ID="txtEmail"  cssClass="txtbox" runat="server" Width="140" />
            Position:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="VoteTitle" DataValueField="VoteTitle">
            </asp:DropDownList>
            <asp:Button ID="btnAdd" runat="server" Text="Create" OnClick="Insert" Width="107px" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Home.aspx">HyperLink</asp:HyperLink>
        </td>
        <td class="auto-style2">
            
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Alphabet Only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCountry" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCountry" ErrorMessage="Numbers Only" ForeColor="Red" ValidationExpression="^[3-9]\d{9}$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            
        </td>
        <td class="auto-style2">
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-electionConnectionString %>" SelectCommand="SELECT [VoteTitle] FROM [Elections]"></asp:SqlDataSource>
        </td>
        
        <td class="auto-style2">
            </td>
    </tr>
</table>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
