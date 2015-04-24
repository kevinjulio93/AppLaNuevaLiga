using LaNuevaLiga.Datos;
using LaNuevaLiga.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaNuevaLiga.Web
{
    public partial class FormPersonaje : System.Web.UI.Page
    {

        RegistroPersonajes registro;
        RegistroCaracteristicas registroCaracter;
        Personajes per=null;
        protected void Page_Load(object sender, EventArgs e)
        {
            registro = new RegistroPersonajes();
            registroCaracter = new RegistroCaracteristicas();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

              string nombre=txtNombre.Text;
              string genero = txtGenero.Text;
              string identidad = txtIdentidad.Text;
              string estatura = txtEstatura.Text;
              string contestura = txtContestura.Text;

              
            per = new Personajes(nombre,genero,identidad,estatura,contestura);
            registro.agregar(per);
            Response.Redirect("FormPersonaje.aspx");

        }

        protected void btnAddLiga_Click(object sender, EventArgs e)
        {
            if (per != null) {
                String liga = txtLiga.Text;

                per.Liga(liga);
           }
            Response.Redirect("FormPersonaje.aspx");

           
        }

        protected void btnAddCaracteristicas_Click(object sender, EventArgs e)
        {
            var lista = registroCaracter.ObtenerCaracteristicas();

            List<Caracteristicas> listaCarac = new List<Caracteristicas>();

            for (int i = 0; i < lista.Count(); i++)
            {
                if (lista.ElementAt(i).Nombre.Equals(selectCaracteristicas.SelectedItem))
                {
                    listaCarac.Add(lista.ElementAt(i));
                    per.Add(lista.ElementAt(i));
                }
            }
            if (per != null)
            {
                per.Caracteristicas2 = listaCarac;
            }

            Response.Redirect("FormPersonaje.aspx");
        }

        protected void txtAddEnemigo_Click(object sender, EventArgs e)
        {
            Personajes enemigo = null;

            if (per != null)
            {
                var lista = registro.ObtenerLista();
                for (int i = 0; i < lista.Count(); i++)
                {
                    if (lista.ElementAt(i).Identidad.Equals(selectEnemigos.SelectedValue))
                    {
                        enemigo = lista.ElementAt(i);
                    }
                }
                             

                per.Enemigo(enemigo);

            }
            Response.Redirect("FormPersonaje.aspx");


        }
    }
}