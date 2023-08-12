using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LOGISTICA_BE.Entities;


namespace LOGISTICA_BLL
{
    public class Deposito_BLL
    {
        private LOGISTICA_DAL.Deposito_DAL _DAL;

        public Deposito_BLL()
        {
            _DAL = new LOGISTICA_DAL.Deposito_DAL();
        }


        public List<Deposito> GetDeposito()
        {
            return _DAL.GetDeposito();
        }

        public void DeleteDeposito(int pDeposito)
        {
            _DAL.DeleteDeposito(pDeposito);
        }

        public void UpdateDeposito(Deposito pDeposito)
        {
            _DAL.UpdateDeposito(pDeposito);
        }

        public void InsertDeposito(Deposito pDeposito)
        {
            _DAL.InsertDeposito(pDeposito);
        }
    }
}
