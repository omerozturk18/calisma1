<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="login2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <form  runat="server">

	
				<div  style="margin-left:500px; margin-right:auto">
					<div class="login-form"><!--login form-->
						<h2>Giriş Yap</h2>
						
                            <p><asp:TextBox ID="TextBox7" Width="350px" Height="40px" runat="server" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                               ControlToValidate="TextBox7" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                            <p><asp:TextBox ID="TextBox8" Width="350px" Height="40px" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                               ControlToValidate="TextBox8" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                               
                           <p> <asp:Button ID="giris" CssClass="btn" runat="server" Text="Giriş Yap" OnClick="giris_Click" />

						
					         </p><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>

						
					</div><!--/login form-->
				</div>
		
	
		
	</form>
    <br /><br /><br />




</asp:Content>

