using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.PortableExecutable;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_BE.Entities;


namespace LOGISTICA_BLL
{
    public class UsuarioPerfil_BLL
    {
        private LOGISTICA_DAL.UsuarioPerfil_DAL _DAL;

        public UsuarioPerfil_BLL()
        {
            _DAL = new LOGISTICA_DAL.UsuarioPerfil_DAL();
        }


        public List<UsuarioPerfil> GetUsuarioPerfil()
        {
            return _DAL.GetUsuarioPerfil();
        }
        public List<UsuarioPerfil> GetUsuarioPerfilByEmail(string pEmail)
        {
            return _DAL.GetUsuarioPerfilByEmail(pEmail);
        }

        public List<UsuarioPerfil> LoginPerfilByEmail(UsuarioPerfil pUsuarioPerfil)
        {
            return _DAL.LoginPerfilByEmail(pUsuarioPerfil);
        }
    }
}
