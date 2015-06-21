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
    public class NColaboradores
    {
        //Metodo insertar que llama al metodo de la clase DPersonas
        //de la CapaDatos
        public static string Insertar(string Persona, string Empleador, string Estado)
        {
            DColaboradores Obj = new DColaboradores();
            Obj.Persona = Persona;
            Obj.Empleador = Empleador;
            Obj.Estado = Estado;
           
            return Obj.Insertar(Obj);
        }
        //Metodo Editar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Editar(string Id, string Persona, string Empleador, string Estado)
        {
            DColaboradores Obj = new DColaboradores();
            Obj.Id = Id;
            Obj.Persona = Persona;
            Obj.Empleador = Empleador;
            Obj.Estado = Estado;
            
            return Obj.Editar(Obj);
        }
        //Metodo Eliminar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Eliminar(string Id)
        {
            DColaboradores Obj = new DColaboradores();
            Obj.Id = Id;

            return Obj.Eliminar(Obj);
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DColaboradores().Mostrar();
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos

        public static DataTable BuscarNombre(string textobuscar)
        {
            DColaboradores Obj = new DColaboradores();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarNombre(Obj);
        }
    }
}
    
    
