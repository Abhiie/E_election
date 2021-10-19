<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voting.aspx.cs" Inherits="E_election.Voting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            <asp:GridView runat="server" ID="GridEmpRecord" AutoGenerateColumns="false" Height="430px" Width="941px">  
    <Columns>  
        <asp:BoundField DataField="CandidateName" HeaderText="Candidate Name" InsertVisible="False" ReadOnly="True" SortExpression="Candidate Name" />
        <asp:BoundField DataField="CandidateNumber" HeaderText="Candidate Number" InsertVisible="False" ReadOnly="True" SortExpression="Candidate Number" />
                   
         <asp:TemplateField HeaderText="Vote">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="vote" OnClick="vote_Click">Vote</asp:LinkButton>
                        </ItemTemplate>
         </asp:TemplateField>

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

        </div>
    </form>
</body>
</html>
