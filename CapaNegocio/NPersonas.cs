using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using System.Data;
using System.Data.SqlClient;


namespace CapaNegocio
{
    public class NPersonas
    {
        //Metodo insertar que llama al metodo de la clase DPersonas
        //de la CapaDatos
        public static string Insertar(int IsPersonaFisica, string Cedula, string Nombre, string Apellido1,string Apellido2,
        string Direccion, string Telefono, string Telefax, string Celular, string Email)

        {
            DPersonas Obj = new DPersonas();
            Obj.IsPersonaFisica = IsPersonaFisica;
            Obj.Cedula = Cedula;
            Obj.Nombre = Nombre;
            Obj.Apellido1 = Apellido1;
            Obj.Apellido2 = Apellido2;
            Obj.Direccion = Direccion;
            Obj.Telefono = Telefono;
            Obj.Telefax = Telefax;
            Obj.Celular = Celular;
            Obj.Email = Email;
            return Obj.Insertar(Obj);
        }
        //Metodo Editar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Editar(int IsPersonaFisica, string Cedula, string Nombre, string Apellido1, string Apellido2,
        string Telefono, string Telefax, string Celular, string Email, string Direccion)
        {
            DPersonas Obj = new DPersonas();
            Obj.IsPersonaFisica = IsPersonaFisica;
            Obj.Cedula = Cedula;
            Obj.Nombre = Nombre;
            Obj.Apellido1 = Apellido1;
            Obj.Apellido2 = Apellido2;
            Obj.Direccion = Direccion;
            Obj.Telefono = Telefono;
            Obj.Telefax = Telefax;
            Obj.Celular = Celular;
            Obj.Email = Email;
            return Obj.Editar(Obj);
        }
        //Metodo Eliminar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Eliminar(string Cedula)
        {
            DPersonas Obj = new DPersonas();
            Obj.Cedula = Cedula;

            return Obj.Eliminar(Obj);
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DPersonas().Mostrar();
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos

        public static DataTable BuscarNombre(string textobuscar)
        {
            DPersonas Obj = new DPersonas();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarNombre(Obj);
        }
    }
}
    