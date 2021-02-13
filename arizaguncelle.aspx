<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="arizaguncelle.aspx.cs" Inherits="arizaguncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <form  runat="server">
  
				<div >
					<div style="margin-left:475px;"><!--login form-->
						<h2><b>Arıza Güncelle</b></h2>
						
                       <p><asp:Label ID="Label1" runat="server" ></asp:Label></p> 
                        <p>&nbsp;</p> 
                        <p>&nbsp;</p> 
                         <p>
                             <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem>Arıza Drurumu Kontrol Ediliyor</asp:ListItem>
                                 <asp:ListItem>Arıza Giderildi</asp:ListItem>
                                 <asp:ListItem>Arıza Tesbit Ediliyor</asp:ListItem>
                                 <asp:ListItem>Arıza Halledilemedi</asp:ListItem>
                             </asp:DropDownList></p>
                        <p>
                            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Güncelle" OnClick="Button1_Click" /></p>
					</div><!--/login form-->
                   
</div>
	</form>
</asp:Content>

