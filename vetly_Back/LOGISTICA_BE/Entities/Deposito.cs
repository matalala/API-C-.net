﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace LOGISTICA_BE.Entities
{
    public partial class Deposito
    {
        public int Id { get; set; }
        public string NombreDeposito { get; set; }
        public int? IdLocalidad { get; set; }
        public int? IdProvincia { get; set; }
        public int? IdPais { get; set; }
    }
}