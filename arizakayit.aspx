<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="arizakayit.aspx.cs" Inherits="arizakayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section><!--form-->
		<div class="container">
			<div class="row">
                
                <div class="form">
<form runat="server">
  <input type="hidden" name="formID" value="81038144351954" />
  <div>
        <div>
          <div>
            <p><strong>BİLGİSAYAR ARIZA TESPİT KABUL FORMU</strong></p>
            <p><strong> </strong></p>
          </div>
        </div>
    
        <div >
          <div >
           <h4><p><strong>MÜŞTERİ BİLGİLERİ</strong></p></h4> 
          </div>
        </div>


          <div style="float:none; clear:both;">

            <span style="float:left; margin-right:100px;">
              <label> Ürün Sahibi Adı </label> <br />
                <asp:TextBox ID="mad1" runat="server"></asp:TextBox>
              </span>

            <span style="float:left; clear:right;">
              <label>Ürün Sahibi Soyadı  </label><br /><asp:TextBox ID="msoyad1" runat="server"></asp:TextBox>
            </span>
          </div>

          <div style="float:none; clear:both;">

            <span style="float:left; margin-right:100px;">
              <label> E-Posta </label><br /><asp:TextBox ID="eposta1" runat="server" placeholder="ör: myname@example.com"></asp:TextBox>
              </span>

            <span>
        <label>Telefon Numarası  </label><br /><asp:TextBox ID="tel1" runat="server" placeholder="ör:(555)(123-45-67)" MaxLength="10"></asp:TextBox>
            </span>
          </div>


        <br /><br />

        
        <div>
           <h4> <label>Adres</label></h4>
          <table>
 
              <tr>
                <td colSpan="2">
                  <span>
                   <label > Tam Adres</label> <br /> <asp:TextBox ID="adres1" Width="600px" runat="server"></asp:TextBox>
                   
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan="2">
                  <span>
                    <label> Adres Satırı 2 </label> <br /><asp:TextBox ID="adres2" Width="600px" runat="server"></asp:TextBox>
                  </span>
                </td>
              </tr>
              <tr>
                <td >
                  <span style="margin-right:100px;">
                    <label> &nbsp;</label><br /> 
                  </span>
                </td>
                <td>
                    &nbsp;</td>
              </tr>
              <tr>
                <td >
                  <span>
                    <label> Posta / Posta Kodu </label><br /><asp:TextBox ID="posta1" runat="server"></asp:TextBox>
                   
                  </span>
                    
                </td>
                
              </tr>
          
          </table>
        </div>
    
      <br /><br />

        <div>
          <div>
            <h4><p>CİHAZ BİLGİLERİ</p></h4>
          </div>
        </div>
      <div>
       <div style="float:left; margin-right:100px;">
          <div class="kutu">
           <h5> <p>PC Parça Adı</p></h5>
          </div>


        <div class="kutu">
         <label> CPU </label><br /> <asp:TextBox ID="cpu1" runat="server"></asp:TextBox>
        </div>

          
       <div class="kutu">
         <label> RAM </label> <br /><asp:TextBox ID="ram1" runat="server"></asp:TextBox>
        </div>
         
      
        <div class="kutu">
         <label> HDD </label> <br /><asp:TextBox ID="hdd1" runat="server"></asp:TextBox>
        </div>

        

         <div class="kutu">
         <label> ANAKART </label><br /><asp:TextBox ID="anakart1" runat="server"></asp:TextBox>
        </div>



         <div class="kutu">
         <label>EKRAN KARTI </label><br /><asp:TextBox ID="ekrankarti1" runat="server"></asp:TextBox>
        </div>

</div>

        <div style="float:left; clear:right;">
          <div>
           <h5> <p>Özellikler</p></h5>
          </div>
        

        
        <div class="kutu">
         <label> Marka </label><br /> <asp:TextBox ID="marka1" runat="server"></asp:TextBox>
        </div>

          
       <div class="kutu">
         <label> Model </label> <br /><asp:TextBox ID="model1" runat="server"></asp:TextBox>
        </div>
         
      
        <div class="kutu">
         <label> Seri No </label> <br /><asp:TextBox  ID="serino1" runat="server"></asp:TextBox>
        </div>

        

         <div class="kutu">
         <label> Garanti Durumu </label><br /> 
             <asp:DropDownList ID="garanti1" runat="server">
                 <asp:ListItem>Devam Etmiyor</asp:ListItem>
                 <asp:ListItem>Devam Ediyor</asp:ListItem>
             </asp:DropDownList></div>
</div>
        
        <div style="float:none; clear:both;" ><br />
         <label> Belirtilen Şikâyetler </label><br /> <asp:TextBox ID="sikayet1" TextMode="MultiLine" Height="100px" Width="600px" runat="server"></asp:TextBox>
        </div>
          </div>
       
          <div>
              <br /><br>
            <p>Müşteri Adına Teslim Eden</p>
          </div>
       

    
        
          <div style="float:none; clear:both;">
            <span style="float:left; margin-right:100px;">
              <label> Ad-Soyad </label><br /><asp:TextBox  ID="ad1" runat="server"></asp:TextBox>
              </span>
          <span style="float:left;  margin-bottom:25px;">
              <br /> &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </span></div>
        

        <div style="float:left;">
          <div>
              <asp:Button ID="gonder" CssClass="btn" runat="server" Text="Gönder" OnClick="gonder_Click" />
            <span>
               
            </span>
            <asp:button CssClass="btn" id="input_reset_2" runat="server"  Text="Formu Temizle" OnClick="input_reset_2_Click">
              </asp:button>
            <span>
               
            </span>
            <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Formu Yazdır" />
          </div>
        </div>

  </div>


</form></div>
			</div>
		</div>
	</section>
</asp:Content>

