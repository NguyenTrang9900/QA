<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTL_QA.DangKy" %>
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
      <div class="formDangNhap" >
        <div class="head">Đăng ký thành viên</div>
        <div class="controls">
            <div class="row">
                <div class="left">Họ và tên</div>
                <div class="right">
                    <input class="inputregister" type="text" id="txtName" value="" name="name" placeholder="Your name..." required="required"/>
                </div>
            </div>

            <div class="row">
                <div class="left">Email</div>
                <div class="right">
                    <input type="email" name="email" id="email" value="" placeholder="abc@gmail.com" required="required"/>
                     <!-- <label id="loiemail" class="loidangki"></label> -->
                </div>
            </div>
            <div class="row">
                <div class="left">CMND</div>
                <div class="right">
                    <input type="cmnd" name="cmnd" id="cmnd" value="" required="required"  />
                </div>
            </div>
            <div class="row">
                <div class="left">Mật khẩu</div>
                <div class="right">
                    <input type="password" name="password" id="password" value="" placeholder="8 ki tu (gom ca chu hoa)..." required="required"/>
                </div>
            </div>

            <div class="row">
                <div class="left">Nhập lại mật khẩu</div>
                <div class="right">
                    <input type="password" name="repassword" id="repassword" value="" placeholder="8 ki tu (gom ca chu hoa)..." required="required"  />
                </div>
            </div>

            <div class="row">
                <div class="left">&nbsp</div>
                <div class="right">
                   
                    <input type="submit" name="btnRegister" id="btnRegister" value="Đăng Ký" onclick="return Dangky();" /> 
                </div>
            </div>
           
            <p style=" color: red">
                <asp:Label ID="loi" runat="server"></asp:Label>
            </p> 
        </div>
    </div>
</asp:Content>
