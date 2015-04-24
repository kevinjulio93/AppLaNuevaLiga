using LaNuevaLiga.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Datos
{
    public class RegistroPersonajes
    {

        static List<Personajes> listaPersonajes = new List<Personajes>();
        static List<Caracteristicas> listaCaracteristicasPersonaje = new List<Caracteristicas>();

        public void agregar(Personajes p)
        {
            listaPersonajes.Add(p);
        }

        public IEnumerable<Caracteristicas> ObtenerCaracteristicas(String identidad)
        {
            for (int i = 0; i < listaPersonajes.Count(); i++) {
                if (listaPersonajes.ElementAt(i).Identidad.Equals(identidad)) {
                    listaCaracteristicasPersonaje = listaPersonajes.ElementAt(i).Caracteristicas2;
                }
            }

            return listaCaracteristicasPersonaje;
        }

        public IEnumerable<Personajes> ObtenerLista()
        {
            return listaPersonajes;
        }

    }
}