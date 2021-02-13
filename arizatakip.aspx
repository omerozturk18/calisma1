<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="arizatakip.aspx.cs" Inherits="arizatakip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <form  runat="server">
        <%if (Request.Cookies["durum"] == null)
            {%>
        <div >
					<div style="margin-left:400px;"><!--login form-->
						<h4><b>Arıza Takibi Yapabilmek İçin Lütfen Üye Olunuz Veya Giriş Yapınız</b></h4>
                         
					</div><!--/login form-->
						<br /><br />
				</div>
           <% }
               else
               {%>
				<div >
					<div style="margin-left:475px;"><!--login form-->
						<h2><b>Arıza Takip</b></h2>
						
                       <p><asp:TextBox ID="TextBox1" runat="server" placeholder="Arızalı Ürünün SeriNo'sunu Giriniz"></asp:TextBox><asp:Button Height="35px" ID="Button1" CssClass="btn" runat="server" Text="Ara" OnClick="Button1_Click" /></p> 
                         
					</div><!--/login form-->
                    <p>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="500px" Width="1000px" AutoGenerateRows="False" DataSourceID="SqlDataSource1"  HorizontalAlign="Center">
                            <FieldHeaderStyle HorizontalAlign="Center" />
                            <Fields>
                                                                <asp:BoundField DataField="serino" HeaderText="Ürün Seri Numarası" SortExpression="serino"  HeaderStyle-Font-Bold="true" HeaderStyle-Width="250px"  ItemStyle-BackColor="#eeeeee" HeaderStyle-BackColor="#eeeeee" />
                                <asp:BoundField DataField="marka" HeaderText="Ürün Markası" SortExpression="marka" HeaderStyle-Font-Bold="true" />
                                <asp:BoundField DataField="model" HeaderText="Ürün Modeli" SortExpression="model"  HeaderStyle-Font-Bold="true" ItemStyle-BackColor="#eeeeee" HeaderStyle-BackColor="#eeeeee" />
                                <asp:BoundField DataField="mad" HeaderText="Müşteri Adı" SortExpression="mad" HeaderStyle-Font-Bold="true" />
                                <asp:BoundField DataField="msoyad" HeaderText="Müşteri Soyadı" SortExpression="msoyad" HeaderStyle-Font-Bold="true" ItemStyle-BackColor="#eeeeee" HeaderStyle-BackColor="#eeeeee" />
                                <asp:BoundField DataField="garantidurumu" HeaderText="Garanti Durumu" SortExpression="garantidurumu" HeaderStyle-Font-Bold="true" />
                                <asp:BoundField DataField="sikayet" HeaderText="Arıza Nedeni" SortExpression="sikayet" HeaderStyle-Font-Bold="true" ItemStyle-BackColor="#eeeeee" HeaderStyle-BackColor="#eeeeee" />
                                <asp:BoundField DataField="arizadurumu" HeaderText="Arıza Durumu" SortExpression="arizadurumu" HeaderStyle-Font-Bold="true" />
                            </Fields>
                        </asp:DetailsView>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ybsveri123ConnectionString %>" SelectCommand="SELECT [serino], [marka], [model], [mad], [msoyad], [garantidurumu], [sikayet], [arizadurumu] FROM [ariza] WHERE ([serino] = @serino)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="serino" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
						<div style="margin-left:450px;">
                       <%if (Request.Cookies["admin"] != null)
            {%><asp:Button ID="Button2" CssClass="btn" runat="server" Text="ArızGüncellemek İçin Tıklayınız"  OnClick="Button2_Click" Width="264px" /> <% }%>
				
		<% } %></div>
</div>
	</form>
</asp:Content>

