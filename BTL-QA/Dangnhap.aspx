<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="BTL_QA.Dangnhap" %>
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
     <div class="formDangNhap">
        <div class="head">Đăng nhập</div>
        <div class="controls">
            <div class="row">
                <div class="left">Email</div>
                <div class="right">
                    <input type="email" name="Email" id="Email" value="" placeholder="abc@gmail.com" required="required" />
                </div>
            </div>

            <div class="row">
                <div class="left">Mật khẩu</div>
                <div class="right">
                    <input type="password" name="Pass" id="Pass" value="" placeholder=".." required="required" />
                </div>
            </div>

            <div class="row">
                <div class="left">&nbsp</div>
                <div class="right">
                    <input type="submit" name="btnDangnhap" id="btnLogin" value="Đăng Nhập" onclick="return Dangnhap();" />
                </div>
            </div>

            <p style=" color: red">
                 <asp:Label ID="loidangnhap" runat="server"></asp:Label>
            </p>
        </div>
    </div>
</asp:Content>
