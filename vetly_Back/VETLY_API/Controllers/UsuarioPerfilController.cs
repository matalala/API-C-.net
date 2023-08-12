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
    public class UsuarioPerfilController : ControllerBase
    {
        private LOGISTICA_BLL.UsuarioPerfil_BLL _BLL;
        private UsuarioPerfil _usuarioPerfil;
        public UsuarioPerfilController()
        {
            _BLL = new LOGISTICA_BLL.UsuarioPerfil_BLL();
            _usuarioPerfil = new UsuarioPerfil();
        }

        // GET: api/UsuarioPerfil
        [HttpGet]
        [Route("getUsuarioPerfil")]
        public async Task<ActionResult<IEnumerable<UsuarioPerfil>>> GetUsuarioPerfil()
        {
            return _BLL.GetUsuarioPerfil();
        }

        // GET: api/getUsuarioPerfilByEmail
        [HttpGet]
        [Route("getUsuarioPerfilByEmail")]
        public async Task<ActionResult<IEnumerable<UsuarioPerfil>>> GetUsuarioPerfilByEmail(String pEmail)
        {
            return _BLL.GetUsuarioPerfilByEmail(pEmail);
        }

    }
}
