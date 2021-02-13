<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <form  runat="server">
				<div style="margin-left:500px;">
					<div class="signup-form"><!--sign up form-->
						<h2>Üye Ol!</h2>
                        
                            <p><asp:TextBox ID="TextBox1" Width="350px" Height="40px" runat="server" placeholder="Ad"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                              ControlToValidate ="TextBox1" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><asp:TextBox ID="TextBox2" Width="350px" Height="40px" runat="server" placeholder="Soyad"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                               ControlToValidate="TextBox2" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                            <p><asp:TextBox ID="TextBox3" Width="350px" Height="40px" runat="server" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                               ControlToValidate="TextBox3" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                                <p><asp:TextBox ID="TextBox4" Width="350px" Height="40px" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                               ControlToValidate="TextBox4" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                            <p><asp:TextBox ID="TextBox5" Width="350px"  Height="40px" runat="server" placeholder="Şifre Tekrar" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                               ControlToValidate="TextBox5" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server"
                                      ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Şifreler Aynı Değil" Font-Bold="True" ForeColor="Red">
                                 </asp:CompareValidator>
                            <p><asp:Button ID="uyeol" CssClass="btn" runat="server" Text="Üye Ol" OnClick="uyeol_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
						
					</div><!--/sign up form-->
				</div>
	</form>
    <br /><br /><br />
</asp:Content>

