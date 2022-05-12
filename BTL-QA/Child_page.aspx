<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Child_page.aspx.cs" Inherits="BTL_QA.Child_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Banner_Product" runat="server" Text=""></asp:Label>
     
        <div id="tieuchi" style="padding-top: 50px; color:  #383838;">
            <img src="images/iconMienphivanchuyen.png" style="width: 40px; height:40px;" />
            <label style="margin-right:30px ">Miễn phí vận chuyển</label>
            <img src="images/iocnDoitradedang.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label style="margin-right:30px">Đổi trả dễ dàng</label>
            <img src="images/iconDathangnhanhchong.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label>Đặt hàng nhanh chóng</label>
        </div>
    <div class="products_container">
        <asp:ListView ID="ListViewProductsType" runat="server">
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
</asp:Content>
