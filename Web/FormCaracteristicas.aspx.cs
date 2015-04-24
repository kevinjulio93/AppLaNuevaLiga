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
    public partial class FormCaracteristicas : System.Web.UI.Page
    {
        RegistroCaracteristicas registro;

        protected void Page_Load(object sender, EventArgs e)
        {
            registro = new RegistroCaracteristicas();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Caracteristicas c;

            string nombre = txtNombre.Text;
            string descripcion = txtDescripcion.Text;

            if(select.SelectedValue.Equals("armas")){

                c = new Armas(nombre, descripcion);
                registro.agregar(c);

            
            }else if(select.SelectedValue.Equals("debilidades")){
                c = new Debilidades(nombre, descripcion);
            registro.agregar(c);

            }
            else if (select.SelectedValue.Equals("habilidades"))
            {
                c = new Habilidades(nombre, descripcion);
            registro.agregar(c);

            }
            else if (select.SelectedValue.Equals("personalidad"))
            {
                c = new Personalidad(nombre, descripcion);
            registro.agregar(c);

            }
            else if (select.SelectedValue.Equals("poderes"))
            {
                c = new Poderes(nombre, descripcion);
            registro.agregar(c);

            }

            Response.Redirect("FormCaracteristicas.aspx");
        }
    }
}