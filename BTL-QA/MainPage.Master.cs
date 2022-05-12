using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_QA
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() == "1")
            {
                loregisterlogin.InnerHtml =
                    "TK: " + Session["name"].ToString() +
                    "<a href=\"Dangxuat.aspx\">ĐĂNG XUẤT</a>";
                Session["url"] = Page.Request.Url.ToString();

            }
            else
            {
                loregisterlogin.InnerHtml = "<a href=\"Dangnhap.aspx\">ĐĂNG NHẬP</a>" +
                           "<a href=\"Dangky.aspx\">ĐĂNG KÝ</a> ";

            }
        }

        protected void BtnTim_Click(object sender, EventArgs e)
        {
            if (txtsearch.Value.ToString()== "nam" ) { Response.Redirect("Child_page.aspx?type=nam"); }
            else if (txtsearch.Value.ToString() == "nu" ) { Response.Redirect("Child_page.aspx?type=nu"); }
            else if (txtsearch.Value.ToString() == "phukien" ) { Response.Redirect("Child_page.aspx?type=phukien"); }
         
        }
    }
}