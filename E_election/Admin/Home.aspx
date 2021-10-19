<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E_election.Admin.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <style>
        #form_login {
            left: 50%;
            top: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
        }

        body {
            background-color: #F5F5F5;
        }

        #mainDiv {
            width: 800px;
            overflow: hidden;
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <form id="form_login" runat="server">
        <div id="mainDiv">

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <div class="row">
                <div class="col-sm-6">
                    <div class="card" style="width: 18rem;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/voter.png" />
                        <div class="card-body">
                            <h5 class="card-title">Voters</h5>
                            <asp:HyperLink ID="AddVotersLink" class="btn btn-primary" runat="server" NavigateUrl="~/Admin/AddVoters.aspx">Add Voter</asp:HyperLink>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card" style="width: 18rem;">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/election.png" />
                        <div class="card-body">
                            <h5 class="card-title">Election</h5>
                            <asp:HyperLink ID="HyperLink1" class="btn btn-primary" runat="server" NavigateUrl="~/Admin/GenerateElection.aspx">Create Elections</asp:HyperLink>
                        </div>
                    </div>
                </div>
                 <div class="col-sm-6">
                    <div class="card" style="width: 18rem;">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/candidates.png" />
                        <div class="card-body">
                            <h5 class="card-title">Candidate</h5>
                            <asp:HyperLink ID="HyperLink2" class="btn btn-primary" runat="server" NavigateUrl="~/Admin/CreateCandidate.aspx">Add Candidate</asp:HyperLink>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card" style="width: 18rem;">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/desk.png" />
                        <div class="card-body">
                            <h5 class="card-title">Result</h5>
                            <asp:HyperLink ID="HyperLink3" class="btn btn-primary" runat="server" NavigateUrl="~/Admin/Result.aspx">Result</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
