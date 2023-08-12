using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_DAL.Data;
using LOGISTICA_BE.Entities;

namespace LOGISTICA_DAL
{
    public class CategoriasProducto_DAL
    {
        public List<CategoriasProducto> GetCategoriasProducto()
        {
            var db = new LOGISTICAContext();
            return db.Categoria_Producto.ToList();
        }

        public void DeleteCategoriasProducto(int pCategoriasProducto)
        {
            var db = new LOGISTICAContext();
            var oCategoriasProducto = db.Categoria_Producto.FirstOrDefault(p => p.Id == pCategoriasProducto);
            if (oCategoriasProducto != null)
            {
                db.Categoria_Producto.Remove(oCategoriasProducto);
                db.SaveChanges();
            }
        }

        public void UpdateCategoriasProducto(CategoriasProducto pCategoriasProducto)
        {
            var db = new LOGISTICAContext();
            var oCategoriasProducto = db.Categoria_Producto.FirstOrDefault(p => p.Id == pCategoriasProducto.Id);
            if (oCategoriasProducto != null)
            {
                oCategoriasProducto.categoriaProducto = pCategoriasProducto.categoriaProducto;
                db.Categoria_Producto.Update(oCategoriasProducto);
                db.SaveChanges();
            }
        }

        public void InsertCategoriasProducto(CategoriasProducto pCategoriasProducto)
        {
            var db = new LOGISTICAContext();
                db.Categoria_Producto.Add(pCategoriasProducto);
                db.SaveChanges();
        }


    }
}
