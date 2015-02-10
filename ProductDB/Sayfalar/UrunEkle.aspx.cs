using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Linq.Expressions;
using System.Configuration;
using System.IO;


namespace ProductDB.Sayfalar
{
    public partial class URUNEKLE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DbEntitiy.DBEntities Entities = new DbEntitiy.DBEntities();


                var CategoryData = (from x in Entities.Category
                                    select x).ToArray();

                drpCategoryId.DataSource = CategoryData;
                drpCategoryId.DataValueField = "CategoryId";
                drpCategoryId.DataTextField = "CategoryName";
                drpCategoryId.DataBind();
            }
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Urunler.aspx");
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DbEkle();
            Response.Write("Urunler Veritabanına Eklendi...!");
        }

        private ProductDB.DbEntitiy.Product DbEkle()
        {
            DbEntitiy.DBEntities Entities = new DbEntitiy.DBEntities();
            ProductDB.DbEntitiy.Product p1 = new ProductDB.DbEntitiy.Product();

            string prodName = txtProductName.Text.ToString();
            int catogId = Int32.Parse(drpCategoryId.SelectedValue);
            
            string file = string.Empty;
            if (FileUpload1.HasFile)
            {
                file = Path.GetFileName(FileUpload1.PostedFile.FileName);
            }

            var isExsistProduct = (from x in Entities.Product
                                   where x.ProductName.Equals(prodName)
                                   && x.CategoryId == catogId
                                   select new { x.ProductId }).FirstOrDefault()
                                  ;

            if (isExsistProduct == null)
            {
                p1.ProductName = txtProductName.Text;
                p1.CategoryId = catogId;
                p1.Description = txtDescription.Text;
                p1.ImageUrl = "..\\Images\\" + file;
                p1.Price = txtPrice.Text;
                p1.Status = txtStatus.Text;

                Entities.Product.Add(p1);
                Entities.SaveChanges();
            }
            return p1;
        }
    }
}
