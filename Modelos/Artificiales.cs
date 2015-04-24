using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Modelos
{
    public class Artificiales:Personajes
    {
        

        public Artificiales(string nombre, string genero, string identidad, string estatura, string contestura,string planeta)
            : base(nombre,genero,identidad,estatura,contestura)
        {
            
        }

       

    }
}