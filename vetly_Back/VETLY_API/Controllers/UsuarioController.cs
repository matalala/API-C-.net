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
    public class UsuarioController : ControllerBase
    {
        private LOGISTICA_BLL.Usuario_BLL _BLL;
        private Usuario _usuario;
        private LOGISTICA_BLL.UsuarioPerfil_BLL _BLLPerfil;
        private UsuarioPerfil _usuarioPerfil;

        public UsuarioController()
        {
            _BLL = new LOGISTICA_BLL.Usuario_BLL();
            _usuario = new Usuario();
            _BLLPerfil = new LOGISTICA_BLL.UsuarioPerfil_BLL();
            _usuarioPerfil = new UsuarioPerfil();
        }

        // GET: api/Usuario
        [HttpGet]
        [Route("getUsuario")]
        public async Task<ActionResult<IEnumerable<Usuario>>> GetUsuario()
        {
            return _BLL.GetUsuario();
        }

        // GET: api/getUsuarioByEmail
        [HttpGet]
        [Route("getUsuarioByEmail")]
        public async Task<ActionResult<IEnumerable<Usuario>>> GetUsuarioByEmail(String pEmail)
        {
            return _BLL.GetUsuarioByEmail(pEmail);
        }

        // ADD: api/Usuario
        [HttpPost]
        [Route("RegistrarUsuario")]
        public IActionResult RegistrarUsuario([FromBody] Usuario _usuario)
        {
            if (_usuario == null)
            {
                return BadRequest("Datos de usuario no proporcionados.");
            }
            _usuario.fecha_creacion = DateTime.Now;

            _BLL.InsertUsuario(_usuario);

            return Ok("Usuario insertado exitosamente.");
        }

        // GET: api/UsuarioPerfil
        [HttpGet]
        [Route("getUsuarioPerfil")]
        public async Task<ActionResult<IEnumerable<UsuarioPerfil>>> GetUsuarioPerfil()
        {
            return _BLLPerfil.GetUsuarioPerfil();
        }

        // POST: api/getUsuarioPerfilByEmail
        [HttpPost]
        [Route("LoginPerfilByEmail")]
        public async Task<ActionResult<IEnumerable<UsuarioPerfil>>> LoginPerfilByEmail([FromBody] UsuarioPerfil _usuarioPerfil)
        {
            return _BLLPerfil.LoginPerfilByEmail(_usuarioPerfil);
        }

    }
}
