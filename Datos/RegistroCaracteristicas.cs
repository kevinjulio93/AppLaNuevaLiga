using LaNuevaLiga.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Datos
{
    public class RegistroCaracteristicas
    {


        static List<Caracteristicas> listaCaracteristicas = new List<Caracteristicas>();

        public void agregar(Caracteristicas caracte)
        {
            listaCaracteristicas.Add(caracte);
        }

        public IEnumerable<Caracteristicas> ObtenerCaracteristicas()
        {
            return listaCaracteristicas;
        }

        

    }
}