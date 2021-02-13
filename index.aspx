<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>YBS</span>-BİLİŞİM</h1>
									<h2>Bilgisayar Teknik Onarım Servisi</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/slider1.jpg" alt="" />
									
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>YBS</span>-BİLİŞİM</h1>
									<h2>100% Responsive Design</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/slider2.jpg"alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>YBS</span>-BİLİŞİM</h1>
									<h2>Free Ecommerce Template</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/slider1.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
			  <div class="col-sm-9 padding-right" style="width:100%;">
				  <div class="features_items"><!--features_items-->
						<h2 class="title text-center">Biz</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/1.png" alt="" />
											<h2>Pc & MAC Bilgisayar</h2>
											<p>Acer, Asus, Casper, Compaq, Dell, HP, Lenovo, Samsung, Sony ve Toshiba satış ve servis hizmetleri. Geniş yedek parça stoğu ile hızlı, kaliteli ve güvenli bir şekilde hizmet verilmektedir.</p>
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/2.png" alt="" />
											<h2>Notebook Tedavi Merkezi</h2>
											<p>Ücretsiz arıza tespitlerinin yapıldığı servis merkezimizde, deneyimli teknik elemanlar çalışmaktadır. Bakım onarım işlemleri güvenli ve sorunsuz bir şekilde, kullanıcı memnuniyeti esas alınarak yapılmaktadır.</p>
										</div>
								</div>
							</div>
						</div>
                        <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/3.jpg" alt="" />
											<h2>Ücretsiz Arıza Tespiti</h2>
											<p>Cihazınızın arıza durumu ücretsiz belirlenir. Cihazınız onay vermeniz durumunda tamir edilir.</p>
										</div>
								</div>
							</div>
						</div>
						
				</div><!--features_items-->
					
					<!--/category-tab-->
					
					<!--/recommended_items-->
					
			  </div>
		  </div>
		</div>
	</section>
</asp:Content>

