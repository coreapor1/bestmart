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
    public class NEmpresas
    {
        //Metodo insertar que llama al metodo de la clase DPersonas
        //de la CapaDatos
        public static string Insertar(string Persona, string RUC, string Nombre_Comercial,
        string Slogan)
        {
            DEmpresas Obj = new DEmpresas();
            Obj.Persona = Persona;
            Obj.RUC = RUC;
            Obj.Nombre_Comercial = Nombre_Comercial;
            Obj.Slogan = Slogan;
            
            return Obj.Insertar(Obj);
        }
        //Metodo Editar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Editar(/*int Id,*/ string Persona, string RUC, string Nombre_Comercial,
        string Slogan)
        {
            DEmpresas Obj = new DEmpresas();
            //Obj.Id = Id;
            Obj.Persona = Persona;
            Obj.RUC = RUC;
            Obj.Nombre_Comercial = Nombre_Comercial;
            Obj.Slogan = Slogan;
            
            return Obj.Editar(Obj);
        }
        //Metodo Eliminar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static string Eliminar(string Id)
        {
            DEmpresas Obj = new DEmpresas();
            Obj.Id = Id;

            return Obj.Eliminar(Obj);
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DEmpresas().Mostrar();
        }
        //Metodo Mostrar que llama al metodo de la clase DCategoria
        //de la CapaDatos

        public static DataTable BuscarNombre(string textobuscar)
        {
            DEmpresas Obj = new DEmpresas();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarNombre(Obj);
        }
    }
}
    
 
