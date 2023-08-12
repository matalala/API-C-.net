using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_BE.Entities;


namespace LOGISTICA_BLL
{
    public class Usuario_BLL
    {
        private LOGISTICA_DAL.Usuario_DAL _DAL;

        public Usuario_BLL()
        {
            _DAL = new LOGISTICA_DAL.Usuario_DAL();
        }


        public List<Usuario> GetUsuario()
        {
            return _DAL.GetUsuario();
        }

        public List<Usuario> GetUsuarioByEmail(string pEmail)
        {
            return _DAL.GetUsuarioByEmail(pEmail);
        }

        public void InsertUsuario(Usuario pUsuario)
        {
            _DAL.InsertUsuario(pUsuario);
        }
    }
}
