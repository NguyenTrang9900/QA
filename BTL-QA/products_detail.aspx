<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="products_detail.aspx.cs" Inherits="BTL_QA.products_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Banner_Productdetail" runat="server" Text=""></asp:Label>    
         <div id="tieuchi" style="padding-top: 50px; color:  #383838;">
            <img src="images/iconMienphivanchuyen.png" style="width: 40px; height:40px;" />
            <label style="margin-right:30px ">Miễn phí vận chuyển</label>
            <img src="images/iocnDoitradedang.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label style="margin-right:30px">Đổi trả dễ dàng</label>
            <img src="images/iconDathangnhanhchong.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label>Đặt hàng nhanh chóng</label>
        </div>
      <div class="product_detail_head">THÔNG TIN SẢN PHẨM</div>
    <div class="product_detail_container">
        <div class="product_detail_left">
            <asp:Image ID="img" runat="server" CssClass="product_detail_img"/>
        </div>
        <div class="product_detail_right">
            <div class="product_detail_right_name">
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            </div>
            <div class="product_detail_right_feature">
                <asp:Label ID="lblFeature" runat="server" Text=""></asp:Label>
            </div>
            <div class="product_detail_right_price">
                <p>Giảm giá nay chỉ còn: <asp:Label ID="lblPrice" runat="server" Text="" CssClass="lblprice"></asp:Label>₫</p>
            </div>
            <div class="product_detail_right_cart">
                <asp:Button ID="btnCart" runat="server" CommandArgument="" Text="MUA NGAY" CssClass="btnCart" OnClick="btnCart_Click"/>
            </div>
        </div>
    </div>
</asp:Content>

