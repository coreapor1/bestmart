using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class DColaboradores
    {
        private string _Id;
        private string _Persona;
        private string _Empleador;
        private string _Estado;
        

        private string _TextoBuscar;

        
        
        public string Id
        {
            get { return _Id; }
            set { _Id = value; }
        }

        public string Persona
        {
            get { return _Persona; }
            set { _Persona = value; }
        }

        public string Empleador
        {
            get { return _Empleador; }
            set { _Empleador = value; }
        }

        public string Estado
        {
            get { return _Estado; }
            set { _Estado = value; }
        }

        public string TextoBuscar
        {
            get { return _TextoBuscar; }
            set { _TextoBuscar = value; }
        }


        //constructor vacio 

        public DColaboradores()
        {

        }

        //constructor con parametros 

        public DColaboradores(string Id, string Persona, string Empleador, string Estado,
            string textobuscar)
        {
            this.Id = Id;
            this.Persona = Persona;
            this.Empleador = Empleador;
            this.Estado = Estado;
            
            this.TextoBuscar = textobuscar;
        }


        //Metodo insertar 

        public string Insertar(DColaboradores Colaboradores) 
        {
            string rpta = "";
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                //codigo

                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();

                //Establecer el comando

                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spinsertar_Colaboradores";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                /*SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "@Id";
                ParId.SqlDbType = SqlDbType.Int;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);*/

                SqlParameter ParPersona = new SqlParameter();
                ParPersona.ParameterName = "@Persona";
                ParPersona.SqlDbType = SqlDbType.UniqueIdentifier;
                ParPersona.Size = 20;
                ParPersona.Value = Colaboradores.Persona;
                SqlCmd.Parameters.Add(ParPersona);


                SqlParameter ParEmpleador = new SqlParameter();
                ParEmpleador.ParameterName = "@Empleador";
                ParEmpleador.SqlDbType = SqlDbType.UniqueIdentifier;
                ParEmpleador.Size = 20;
                ParEmpleador.Value = Colaboradores.Empleador;
                SqlCmd.Parameters.Add(ParEmpleador);

                SqlParameter ParEstado = new SqlParameter();
                ParEstado.ParameterName = "@Estado";
                ParEstado.SqlDbType = SqlDbType.UniqueIdentifier;
                ParEstado.Size = 20;
                ParEstado.Value = Colaboradores.Estado;
                SqlCmd.Parameters.Add(ParEstado);

                //ejecutamos nuestro comando

                rpta = SqlCmd.ExecuteNonQuery() == 1 ? "OK" : "No se Ingreso el Registro";



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

        //Metodo Editar 
        public string Editar(DColaboradores Colaboradores) 
        {
            string rpta = "";
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                //codigo

                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();

                //Establecer el comando

                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "speditar_Colaboradores";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "@Id";
                ParId.SqlDbType = SqlDbType.Int;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);

                SqlParameter ParPersona = new SqlParameter();
                ParPersona.ParameterName = "@Persona";
                ParPersona.SqlDbType = SqlDbType.VarChar;
                ParPersona.Size = 20;
                ParPersona.Value = Colaboradores.Persona;
                SqlCmd.Parameters.Add(ParPersona);

                SqlParameter ParEmpleador = new SqlParameter();
                ParEmpleador.ParameterName = "@Empleador";
                ParEmpleador.SqlDbType = SqlDbType.VarChar;
                ParEmpleador.Size = 20;
                ParEmpleador.Value = Colaboradores.Empleador;
                SqlCmd.Parameters.Add(ParEmpleador);

                SqlParameter ParEstado = new SqlParameter();
                ParEstado.ParameterName = "@Estado";
                ParEstado.SqlDbType = SqlDbType.VarChar;
                ParEstado.Size = 20;
                ParEstado.Value = Colaboradores.Estado;
                SqlCmd.Parameters.Add(ParEstado);
                
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

        //Metodo Eliminar 
        public string Eliminar(DColaboradores Colaboradores)
        {
            string rpta = "";
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                //codigo

                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();

                //Establecer el comando

                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "speliminar_Colaboradores";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "@Id";
                ParId.SqlDbType = SqlDbType.Int;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);

                
                //ejecutamos nuestro comando

                rpta = SqlCmd.ExecuteNonQuery() == 1 ? "OK" : "No se Elimino ningun Registro";


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

        //Metodo Mostrar
        public DataTable Mostrar()
        {
            DataTable DtResultado = new DataTable("Colaboradores");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spmostrar_Colaboradores";
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

        //Metodo BuscarNombre 
        public DataTable BuscarNombre(DColaboradores Colaboradores)
        {
            DataTable DtResultado = new DataTable("Colaboradores");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spbuscar_Colaboradores";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParTextoBuscar = new SqlParameter();
                ParTextoBuscar.ParameterName = "@textobuscar";
                ParTextoBuscar.SqlDbType = SqlDbType.VarChar;
                ParTextoBuscar.Size = 50;
                ParTextoBuscar.Value = Colaboradores.TextoBuscar;
                SqlCmd.Parameters.Add(ParTextoBuscar);

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
    
