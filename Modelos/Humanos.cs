﻿    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Modelos
{
    public class Humanos:Personajes{
        

        public Humanos(string nombre, string genero, string identidad, string estatura, string contestura)
            : base(nombre,genero,identidad,estatura,contestura)
        {
            
        }

       

    }
}