<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pizzaria.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 150px;
		}
		.auto-style2 {
			width: 150px;
			height: 23px;
		}
		.auto-style3 {
			height: 23px;
		}
		.auto-style4 {
			width: 528px;
		}
		.auto-style5 {
			height: 23px;
			width: 528px;
		}
		.auto-style6 {
			width: 100%;
			height: 61px;
		}
		.auto-style7 {
			margin-left: 0px;
		}
		.auto-style8 {
			height: 224px;
		}
	</style>
</head>
<body style="height: 525px">
    <form id="form1" runat="server">
        <div>
            <center class="auto-style8">
			    <h1>Delicious Pizza</h1>
                <h2>Welcome to Delicious Pizza, place your order</h2>
						<table class="auto-style6">	
							<tr>
								<td class="auto-style1">
									<asp:Label ID="lblDescricao" runat="server" Text="Description"></asp:Label>
								</td>
								<td class="auto-style4">
									<asp:TextBox ID="txbDescricao" runat="server" CssClass="auto-style7" Width="478px"></asp:TextBox>
								</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
							</tr>
							<tr>
								<td class="auto-style2">
									<asp:Label ID="lblValor" runat="server" Text="Value Total $"></asp:Label>
								</td>
								<td class="auto-style5">
									<asp:TextBox ID="txbValor" runat="server" Width="209px"></asp:TextBox>
		&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Label ID="lblMsg" runat="server"></asp:Label>
								</td>
								<td class="auto-style3">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style1">&nbsp;</td>
								<td class="auto-style4">
									&nbsp;<asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Place Order" Width="89px" shadow="grey" />
		&nbsp;&nbsp;
									<asp:Button ID="btnNovo" runat="server" CssClass="auto-style7" Text="New Order" Width="89px" shadow="grey" OnClick="btnNovo_Click" />
								&nbsp;
									<asp:Button ID="btnDeletar" runat="server" OnClick="btnDeletar_Click" Text="Delete" Width="83px" shadow="grey" />
&nbsp;&nbsp;
									<asp:Button ID="btnLog" runat="server" Text="Log" Width="85px" OnClick="btnLog_Click" shadow="grey" />
								</td>
								<td>&nbsp;</td>
							</tr>
					</table>
				<br />
				<br />
				<br />
				<asp:GridView ID="GVPizza" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="153px" Width="291px">
					<AlternatingRowStyle BackColor="White" />
					<EditRowStyle BackColor="#2461BF" />
					<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
					<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
					<RowStyle BackColor="#EFF3FB" />
					<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
					<SortedAscendingCellStyle BackColor="#F5F7FB" />
					<SortedAscendingHeaderStyle BackColor="#6D95E1" />
					<SortedDescendingCellStyle BackColor="#E9EBEF" />
					<SortedDescendingHeaderStyle BackColor="#4870BE" />
				</asp:GridView>
				<br />
				<br />
				<asp:GridView ID="GVLog" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="148px" Width="283px">
					<AlternatingRowStyle BackColor="White" />
					<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
					<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
					<RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
					<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
					<SortedAscendingCellStyle BackColor="#FDF5AC" />
					<SortedAscendingHeaderStyle BackColor="#4D0000" />
					<SortedDescendingCellStyle BackColor="#FCF6C0" />
					<SortedDescendingHeaderStyle BackColor="#820000" />
				</asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
