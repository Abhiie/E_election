<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="E_election.Admin.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
     
        
         
        #form_Result {
            left: 50%;
            top: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
             height: 694px;
         }
         .card-img-top {}
    </style>
</head>
<body>
    <form id="form_Result" runat="server">
        <div>
            <div id="mainDiv">

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <div class="card" style="width: 18rem;">
                <asp:Image ID="Image1" CssClass="card-img-top"  runat="server" ImageUrl="~/Images/winner.png" Height="308px" Width="416px" />
          
            <div class="card-body">
               <h5 class="card-title">Elected Candidate From Selected election</h5>
           </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">  
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="VoteTitle" DataValueField="VoteTitle" Font-Bold="True" Font-Size="Medium" Height="50px" Width="190px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-electionConnectionString %>" SelectCommand="SELECT [VoteTitle] FROM [Elections]"></asp:SqlDataSource>
                        </li>
              </ul>
                <p>
                    &nbsp;</p>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"> <asp:TextBox CssClass="txtbox" ID="txtWinner" runat="server" Height="30px" Width="190px" OnTextChanged="txtWinner_TextChanged" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
</li>
              </ul>
                <p>
                    &nbsp;</p>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><asp:Button ID="Button1" runat="server" OnClick="btnClick_Click" Text="Show Elected Candidate" Font-Bold="True" Font-Size="Medium" Height="38px" Width="236px" /></li>
              </ul>
              <div class="card-body">
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>
</div>
                <div class="row">
                <div class="col-sm-6">
                    <div class="card" style="width: 18rem;height:109%">
                        <br />
                    </div>
                </div>
                
            </div>
        </div>
        </div>
    </form>
</body>
</html>
