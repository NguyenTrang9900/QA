<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTL_QA.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="img1">
            <img src="images/bannerindex2.jpg" style="width: 1200px; height: 686px;
            border-top-right-radius: 20px;
            border-top-left-radius: 20px">     
        </div>           
         <div id="tieuchi" style="padding-top: 50px; color:  #383838;">
            <img src="images/iconMienphivanchuyen.png" style="width: 40px; height:40px;" />
            <label style="margin-right:30px ">Miễn phí vận chuyển</label>
            <img src="images/iocnDoitradedang.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label style="margin-right:30px">Đổi trả dễ dàng</label>
            <img src="images/iconDathangnhanhchong.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label>Đặt hàng nhanh chóng</label>
        </div>
        <div class="gioithieu">
            <hr />
            <label style=" font-weight:bold">GIỚI THIỆU VỀ CỬA HÀNG</label>           
        </div>
        <div class="div" >
            <div style="margin-right:50px">
                 <br>
                Le nostre cucine non lasciano indifferenti: hanno forti personalità, idee decise, complessità di emozioni.
                <br>
                <br>
                Proprio come voi. Perché non sono oggetti; sono esperienze, che ogni giorno danno un nuovo signiﬁcato alla gioia di stare insieme.
            </div>           
            <img src="images/gioithieucuahang (2).jpg" style="height: 250px;margin-left: 50px; margin-inline-end: 60px;border-radius: 5px;"/>
        </div>
    <div class="content">
			
                <div class="gioithieu" >
                    <hr  />
                    <h3>SẢN PHẦM BÁN CHẠY NHẤT</h3>
				    <img src="images/iconnew.png" width="100"/>
				</div>
                
			
			<div class="products_container"> 
                    <asp:ListView ID="ListViewFeaturedProducts" runat="server">
                       <ItemTemplate>
                             <div class="products_container_cols">                   
                                    <a href="products_detail.aspx?id=<%# Eval("id") %>">
                                        <img src="<%# Eval("img") %>" alt="" />
                                    </a>
                                    <div class="products_text">
                                        <p class="products_text1"><%# Eval("name") %></p>
                                        <p class="products_text2"><strong><%# Eval("price") %>đ</strong></p>                          
                                    </div>
                              </div>   
                        </ItemTemplate>
                    </asp:ListView>
                </div>

             <div class="gioithieu" >
                    <hr  />
                    <h3>SẢN PHẦM HOT NHẤT</h3>
				    <img src="images/iconhot.jpg" width="100"/>
				</div>
                <div class="products_container"> 
                    <asp:ListView ID="ListViewNewProducts" runat="server">
                       <ItemTemplate>
                             <div class="products_container_cols">                   
                                    <a href="products_detail.aspx?id=<%# Eval("id") %>">
                                        <img src="<%# Eval("img") %>" />
                                    </a>
                                    <div class="products_text">
                                        <p class="products_text1"><%# Eval("name") %></p>
                                        <p class="products_text2"><strong><%# Eval("price") %>đ</strong></p>                          
                                    </div>
                              </div>   
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
</asp:Content>
