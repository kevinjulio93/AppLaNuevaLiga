using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Modelos
{
    public abstract class Caracteristicas
    {
        private string nombre;
        private string descripcion;


        public Caracteristicas(string nombre,string descripcion)
        {
            this.nombre = nombre;
            this.descripcion = descripcion;
        }


        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }





    }
}   