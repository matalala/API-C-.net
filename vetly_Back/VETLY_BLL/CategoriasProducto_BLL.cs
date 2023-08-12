using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_BE.Entities;


namespace LOGISTICA_BLL
{
    public class CategoriasProducto_BLL
    {
        private LOGISTICA_DAL.CategoriasProducto_DAL _DAL;

        public CategoriasProducto_BLL()
        {
            _DAL = new LOGISTICA_DAL.CategoriasProducto_DAL();
        }


        public List<CategoriasProducto> GetCategoriasProducto()
        {
            return _DAL.GetCategoriasProducto();
        }

        public void DeleteCategoriasProducto(int pCategoriasProducto)
        {
            _DAL.DeleteCategoriasProducto(pCategoriasProducto);
        }

        public void UpdateCategoriasProducto(CategoriasProducto pCategoriasProducto)
        {
            _DAL.UpdateCategoriasProducto(pCategoriasProducto);
        }

        public void InsertCategoriasProducto(CategoriasProducto pCategoriasProducto)
        {
            _DAL.InsertCategoriasProducto(pCategoriasProducto);
        }
    }
}
