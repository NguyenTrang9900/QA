using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_QA
{
    public partial class Child_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["type"] != null)
            {
                string type = Request.QueryString["type"];
                if (type == "nam") { Banner_Product.Text = "<div   class='nam'>&nbsp </div>"; }
                else if (type == "nu") { Banner_Product.Text = "<div class='nu'>&nbsp</div>"; }
                else if (type == "phukien") { Banner_Product.Text = "<div class='phukien'>&nbsp</div>"; }
                else if (type == "Giày Vans") { Banner_Product.Text = "<div class='giay_vans'>&nbsp</div>"; }
                else if (type == "Giày Converse") { Banner_Product.Text = "<div class='giay_converse'>&nbsp</div>"; }

                List<ProductList> arrProducts = (List<ProductList>)Application["products"];
                List<ProductList> arrType = new List<ProductList>();
                foreach (ProductList sp in arrProducts)
                {
                    if (sp.type == type)
                    {
                        arrType.Add(sp);
                    }
                }
                ListViewProductsType.DataSource = arrType;
                ListViewProductsType.DataBind();
            }
        }
    }
}