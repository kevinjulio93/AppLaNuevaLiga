using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaNuevaLiga.Modelos
{
    public interface Ifichas
    {
         void Add(Caracteristicas car);
         void Liga(string liga);
         void Enemigo(Personajes pers);
    }
}