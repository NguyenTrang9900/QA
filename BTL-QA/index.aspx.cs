using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_QA
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] a = new int[6]; List<int> b = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 };
            Random rd = new Random();
            List<ProductList> arrList = (List<ProductList>)Application["products"];
            List<ProductList> arrFeaturedProducts = new List<ProductList>();
            List<ProductList> arrNewProducts = new List<ProductList>();
            for(int i =0; i<6; i++)
            {
                int trunggian = rd.Next(0, b.Count());
                a[i] = b[trunggian];
                b.RemoveAt(trunggian);


            }
            
            foreach (ProductList sp in arrList)
            {
                int id = int.Parse(sp.id);
                for (int i = 0; i < 6; i++)
                    if (id ==a[i])
                {
                    arrFeaturedProducts.Add(sp);
                }
                if (id == 3 || id == 6 || id == 9 || id == 22 || id == 25 || id == 31 || id == 40 || id == 46 ||
                    id == 51 )
                {
                    arrNewProducts.Add(sp);
                }
            }
            
            ListViewFeaturedProducts.DataSource = arrFeaturedProducts;
            ListViewFeaturedProducts.DataBind();

            ListViewNewProducts.DataSource = arrNewProducts;
            ListViewNewProducts.DataBind();
        }
    }
}