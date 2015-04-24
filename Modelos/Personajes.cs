using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Modelos
{
    public class Personajes:Ifichas{

        #region "Atributos"
        private  string nombre;
        private  string genero; 
        private  string identidad;
        private  string estatura;
        private  string contestura;

        private String liga;
        private List<Caracteristicas> caracteristicas;
        private Personajes enemigo;


        public List<Caracteristicas> Caracteristicas2
        {
            get { return caracteristicas; }
            set { caracteristicas = value; }
        }



        
               
        #endregion

        #region "Propiedades"

     
        public string Nombres
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Identidad
        {
            get { return identidad; }
            set { identidad = value; }
        }

        public string Estatura
        {
            get { return estatura; }
            set { estatura = value; }
        }

        public string Contestura
        {
            get { return contestura; }
            set { contestura = value; }
        }
        #endregion

        public Personajes(string nombre, string genero, string identidad, string estatura, string contestura)
        {
            this.nombre = nombre;
            this.genero = genero;
            this.identidad = identidad;
            this.estatura = estatura;
            this.contestura = contestura;
            

        }


        public void Add(Caracteristicas carac)
        {
            caracteristicas.Add(carac);
        }

        public void Liga(string lig)
        {
            this.liga = lig;
        }
        public void Enemigo(Personajes pers)
        {
            this.enemigo = pers;
        }


        public override string ToString()
        {
            return "\nNombre: " + this.nombre +
                            "\nIdentidad: " + this.identidad +
                            "\nGenero: " + this.genero +
                            "\nestatura: " + this.estatura +
                            "\ncontestura: " + this.contestura;
         
        }



       
    }
}