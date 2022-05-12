<%@  Page EnableEventValidation="false"  Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="BTL_QA.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="img1">
            <img src="images/Banner-main.png" />           
        </div>
        <div id="tieuchi" style="padding-top: 50px; color:  #383838;">
            <img src="images/iconMienphivanchuyen.png" style="width: 40px; height:40px;" />
            <label style="margin-right:30px ">Miễn phí vận chuyển</label>
            <img src="images/iocnDoitradedang.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label style="margin-right:30px">Đổi trả dễ dàng</label>
            <img src="images/iconDathangnhanhchong.png" style="width: 40px; height:40px; margin-left: 60px;" />
            <label>Đặt hàng nhanh chóng</label>
        </div>
    <p class="cart_head">Giỏ hàng của bạn: <label class="product_count">(<asp:Label ID="TotalProductCount" runat="server" Text=""></asp:Label> sản phẩm)- Tổng thành tiền:<asp:Label ID="TotalPriceProduct" runat="server" Text="" ></asp:Label>đ </label></p>
     <div class="cart_container">
   
       <div class="cart_left">
           <asp:ListView ID="Cart" runat="server" >
               <ItemTemplate>
                   <hr style="width:600px" />
                   <div class="cart_image">
                       <img src="<%# Eval("img") %>" width="150"/>
                   </div>
                   <div class="cart_content_right">
                       <p><%# Eval("name")%></p>
                        <label> <%# Eval("detail")%> </label>
                       <br />
                       <strong><%# Eval("price") %>đ</strong>
<asp:Button ID="btnRemove" runat="server" Text="Hủy" CommandArgument='<%# Eval("id") %>'  CssClass="btnRemove" OnClick ="btnRemove_Click" />
                   </div>
                   <!-- <OnClientClick="if(!Xacnhan_Xoa()) return false;"/>--> 
               </ItemTemplate>
            </asp:ListView>
       </div>
   </div>
</asp:Content>
