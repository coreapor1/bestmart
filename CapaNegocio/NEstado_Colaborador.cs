using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data.SqlClient;
using System.Data;

namespace CapaNegocio
{
    public class NEstado_Colaborador
    {
                //Metodo insertar que llama al metodo de la clase DEstados_Colaborador
        //de la CapaDatos
        public static string Insertar(string Nombre)
        {
            DEstados_Colaborador Obj = new DEstados_Colaborador();
            Obj.Nombre = Nombre;


            return Obj.Insertar(Obj);
        }

        public static string Modificar(string Nombre)
        {
            DEstados_Colaborador Obj = new DEstados_Colaborador();
            Obj.Nombre = Nombre;


            return Obj.Modificar(Obj);
        }

        public static DataTable Mostrar()
        {
                     

            return new DEstados_Colaborador().Mostrar();
        }


    }
}
