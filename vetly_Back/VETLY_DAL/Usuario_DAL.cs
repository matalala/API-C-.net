using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_DAL.Data;
using LOGISTICA_BE.Entities;

namespace LOGISTICA_DAL
{
    public class Usuario_DAL
    {
        public List<Usuario> GetUsuario()
        {
            var db = new LOGISTICAContext();
            return db.Usuario.ToList();
        }

        public List<Usuario> GetUsuarioByEmail(string pEmail)
        {
            var db = new LOGISTICAContext();
            return db.Usuario.Where(Usuario => Usuario.email.Equals(pEmail)).ToList();
        }

        public void InsertUsuario(Usuario pUsuario)
        {
            var db = new LOGISTICAContext();
            db.Usuario.Add(pUsuario);
            db.SaveChanges();
        }


    }
}
