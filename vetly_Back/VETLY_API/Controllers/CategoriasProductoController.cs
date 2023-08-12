using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LOGISTICA_BE.Entities;

namespace LOGISTICA_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriasProductoController : ControllerBase
    {
        private LOGISTICA_BLL.CategoriasProducto_BLL _BLL;
        private CategoriasProducto _categoriasProducto;
        public CategoriasProductoController()
        {
            _BLL = new LOGISTICA_BLL.CategoriasProducto_BLL();
            _categoriasProducto = new CategoriasProducto();
        }

        // GET: api/CategoriasProducto
        [HttpGet]
        [Route("getCategoriasProducto")]
        public async Task<ActionResult<IEnumerable<CategoriasProducto>>> GetCategoriasProducto()
        {
            return _BLL.GetCategoriasProducto();
        }

        // DELETE: api/CategoriasProducto
        [HttpDelete]
        [Route("DeleteCategoriasProducto")]
        public void DeleteCategoriasProducto(int idCategoriaProducto)
        {
            _BLL.DeleteCategoriasProducto(idCategoriaProducto);
        }

        // UPDATE: api/CategoriasProducto
        [HttpPut]
        [Route("UpdateCategoriaProducto")]
        public void UpdateCategoriaProducto(int pIdCategoriaProducto, string pCategoriaProducto)
        {

            _categoriasProducto.Id = pIdCategoriaProducto;
            _categoriasProducto.categoriaProducto = pCategoriaProducto;

            _BLL.UpdateCategoriasProducto(_categoriasProducto);
        }

        // ADD: api/CategoriasProducto
        [HttpPost]
        [Route("InsertCategoriasProducto")]
        public void InsertCategoriasProducto(string pCategoriaProducto)
        {
            _categoriasProducto.categoriaProducto = pCategoriaProducto;

            _BLL.InsertCategoriasProducto(_categoriasProducto);
        }
    }
}
