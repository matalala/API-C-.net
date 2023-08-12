using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_DAL.Data;
using LOGISTICA_BE.Entities;

namespace LOGISTICA_DAL
{
    public class Deposito_DAL
    {
        public List<Deposito> GetDeposito()
        {
            var db = new LOGISTICAContext();
            return db.Depositos.ToList();
        }

        public void DeleteDeposito(int pDeposito)
        {
            var db = new LOGISTICAContext();
            var oDeposito = db.Depositos.FirstOrDefault(p => p.Id == pDeposito);
            if (oDeposito != null)
            {
                db.Depositos.Remove(oDeposito);
                db.SaveChanges();
            }
        }

        public void UpdateDeposito(Deposito pDeposito)
        {
            var db = new LOGISTICAContext();
            var oDeposito = db.Depositos.FirstOrDefault(p => p.Id == pDeposito.Id);
            if (oDeposito != null)
            {
                oDeposito.NombreDeposito = pDeposito.NombreDeposito;
                oDeposito.IdProvincia = pDeposito.IdProvincia;
                oDeposito.IdLocalidad = pDeposito.IdLocalidad;
                oDeposito.IdPais = pDeposito.IdPais;
                db.Depositos.Update(oDeposito);
                db.SaveChanges();
            }
        }

        public void InsertDeposito(Deposito pDeposito)
        {
            var db = new LOGISTICAContext();
                db.Depositos.Add(pDeposito);
                db.SaveChanges();
        }


    }
}
