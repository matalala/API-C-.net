using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_DAL.Data;
using LOGISTICA_BE.Entities;

namespace LOGISTICA_DAL
{
    public class UsuarioPerfil_DAL
    {
        public List<UsuarioPerfil> GetUsuarioPerfil()
        {
            var db = new LOGISTICAContext();
            return db.UsuarioPerfil.ToList();
        }

        public List<UsuarioPerfil> LoginPerfilByEmail(UsuarioPerfil pUsuarioPerfil)
        {
            var db = new LOGISTICAContext();
            return db.UsuarioPerfil.Where(UsuarioPerfil => UsuarioPerfil.email.Equals(pUsuarioPerfil.email)).ToList();
        }
        public List<UsuarioPerfil> GetUsuarioPerfilByEmail(string pUsuarioPerfil)
        {
            var db = new LOGISTICAContext();
            return db.UsuarioPerfil.Where(UsuarioPerfil => UsuarioPerfil.email.Equals(pUsuarioPerfil)).ToList();
        }


    }
}
