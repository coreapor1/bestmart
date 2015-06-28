using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class DEstados_Colaborador
    {
        private string _Nombre;
        public string Nombre { get; set; }

        //Constructor vacio
        public DEstados_Colaborador() { }


        public DEstados_Colaborador(string n) {

            this.Nombre = n;
        
        }

        public string Insertar(DEstados_Colaborador estado){
        
            string rpta ="";
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                //Codigo

                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();

                //Establecer el comando

                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spinsertar_Estados_Colaborador";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "nombre";
                ParId.SqlDbType = SqlDbType.NChar;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);


                //ejecutamos nuestro comando

                rpta = SqlCmd.ExecuteNonQuery() == 1 ? "OK" : "No se Actualizo el Registro";
            }
   catch (Exception ex)
            {
                rpta = ex.Message;
            }
            finally
            {
                if (SqlCon.State == ConnectionState.Open) SqlCon.Close();
            }

            return rpta;
        

        
        
        }

        public string Modificar(DEstados_Colaborador estado)
        {

            string rpta = "";
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                //Codigo

                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();

                //Establecer el comando

                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spinsertar_Estados_Colaborador";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "nombre";
                ParId.SqlDbType = SqlDbType.NChar;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);


                //ejecutamos nuestro comando

                rpta = SqlCmd.ExecuteNonQuery() == 1 ? "OK" : "No se Actualizo el Registro";
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }
            finally
            {
                if (SqlCon.State == ConnectionState.Open) SqlCon.Close();
            }

            return rpta;




        }

        public DataTable Mostrar()
        {
            DataTable DtResultado = new DataTable("Estado_Colaboradores");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spmostrar_Estados_Colaborador";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex)
            {
                DtResultado = null;
            }
            return DtResultado;
        }




    }
}
