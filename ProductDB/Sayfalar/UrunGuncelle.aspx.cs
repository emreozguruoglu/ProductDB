using ProductDB.DbEntitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductDB.Sayfalar
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Urunler.aspx");
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            Guncelle();
        }

        private void Guncelle()
        {
            DbEntitiy.DBEntities entities = new DbEntitiy.DBEntities();

            int SorguId = Int32.Parse(txtGuncellenecekId.Text);

            var myuserEntity = (from a in entities.Product
                                where a.ProductId == SorguId
                                select a).SingleOrDefault();

            myuserEntity.Price = txtPrice.Text;
            myuserEntity.ImageUrl = txtImageUrl.Text;
            myuserEntity.Status = txtStatus.Text;
            myuserEntity.Description = txtDescription.Text;

            entities.SaveChanges(); 
        }

        protected void btnSorgula_Click(object sender, EventArgs e)
        {
            Sorgula();
        }

        private void Sorgula()
        {
            DbEntitiy.DBEntities entities=new DbEntitiy.DBEntities();
            int SorguId=Int32.Parse(txtGuncellenecekId.Text);

            var Sorgu = (from x in entities.Product 
                        where x.ProductId == SorguId
                        select new {                       /*Select'den sonda new yazarak sadece o istenilen verinin
                                                            * istenilen değerlerini çekeriz*/
                        x.Price,
                        x.ImageUrl,
                        x.Description,
                        x.Status}).ToArray();          /*ToArray ile bir diziye atadık ve güncellenecek 
                                                        * değerleri bir diziden çağırdık */

            txtPrice.Text = Sorgu[0].Price;
            //fileUpload.FileName = Sorgu[0].ImageUrl;
            txtDescription.Text = Sorgu[0].Description;
            txtStatus.Text = Sorgu[0].Status;
        }
    }
}