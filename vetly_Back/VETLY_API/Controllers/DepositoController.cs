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
    public class DepositoController : ControllerBase
    {
        private LOGISTICA_BLL.Deposito_BLL _BLL;
        private Deposito _deposito;
        public DepositoController()
        {
            _BLL = new LOGISTICA_BLL.Deposito_BLL();
            _deposito = new Deposito();
        }

        // GET: api/Deposito
        [HttpGet]
        [Route("getDeposito")]
        public async Task<ActionResult<IEnumerable<Deposito>>> GetDeposito()
        {
            return _BLL.GetDeposito();
        }

        // DELETE: api/Depositos
        [HttpDelete]
        [Route("DeleteDepositos")]
        public void DeleteDeposito(int idDeposito)
        {
            _BLL.DeleteDeposito(idDeposito);
        }

        // UPDATE: api/Depositos
        [HttpPut]
        [Route("UpdateDepositos")]
        public void UpdateDeposito(int pIdDeposito, string pNombreDeposito, int pLocalidad, int pProvincia, int pPais )
        {

            _deposito.Id = pIdDeposito;
            _deposito.NombreDeposito = pNombreDeposito;
            _deposito.IdLocalidad = pLocalidad;
            _deposito.IdProvincia = pProvincia;
            _deposito.IdPais = pPais;

            _BLL.UpdateDeposito(_deposito);
        }

        // ADD: api/Depositos
        [HttpPost]
        [Route("InsertDepositos")]
        public void InsertDeposito(string pNombreDeposito, int pLocalidad, int pProvincia, int pPais)
        {
            _deposito.NombreDeposito = pNombreDeposito;
            _deposito.IdLocalidad = pLocalidad;
            _deposito.IdProvincia = pProvincia;
            _deposito.IdPais = pPais;

            _BLL.InsertDeposito(_deposito);
        }
    }
}
