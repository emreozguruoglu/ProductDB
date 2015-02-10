using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProductDB.Sayfalar
{
    public partial class UrunSıl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Urunler.aspx");
        }



        private void DbSil()
        {
            DbEntitiy.DBEntities entities = new DbEntitiy.DBEntities();
            ProductDB.DbEntitiy.Category p1 = new ProductDB.DbEntitiy.Category();

            int idsec = Convert.ToInt32(txtSilinecekId.Text);

            var idSil = (from x in entities.Product
                         where x.ProductId == idsec
                         select x).SingleOrDefault();

            /* NOT:sorgunun sonuna SingleOrDefault(); ifadesini koymazsan Remove fonksiyonunu çağıramazsın.
            illa bu fonksiyon olmak zorunda değil ama fonksiyon olmak zorunda. */

            entities.Product.Remove(idSil); // İstediğimiz ID'yi silen adım

            entities.SaveChanges(); // Her sorgudan sonra yap.Değişiklikleri kaydeder.
        }

        protected void btnDbSil_Click(object sender, EventArgs e)
        {
            DbSil();
        }

    }
}