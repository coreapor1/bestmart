using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;        


namespace CapaDatos
{
    public class DEmpresas
    {
        private string _Id;
        private string _Persona;
        private string _RUC;
        private string _Nombre_Comercial;
        private string _Slogan;

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

        public string RUC
        {
            get { return _RUC; }
            set { _RUC = value; }
        }

        public string Nombre_Comercial
        {
            get { return _Nombre_Comercial; }
            set { _Nombre_Comercial = value; }
        }

        public string Slogan
        {
            get { return _Slogan; }
            set { _Slogan = value; }
        }

        public string TextoBuscar
        {
            get { return _TextoBuscar; }
            set { _TextoBuscar = value; }
        }
        

        //constructor vacio 

        public DEmpresas()
        {

        }

        //constructor con parametros 

        public DEmpresas(/*string Id, */string Persona, string RUC, string Nombre_Comercial,
            string Slogan, string textobuscar)
        {
            //this.Id = Id;
            this.Persona = Persona;
            this.RUC = RUC;
            this.Nombre_Comercial = Nombre_Comercial;
            this.Slogan = Slogan;
            this.TextoBuscar = textobuscar;
        }


        //Metodo insertar 

        public string Insertar(DEmpresas Empresas) 
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
                SqlCmd.CommandText = "spinsertar_Empresas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                /*SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "@Id";
                ParId.SqlDbType = SqlDbType.Int;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);*/

                SqlParameter ParPersona = new SqlParameter();
                ParPersona.ParameterName = "@Persona";
                ParPersona.SqlDbType = SqlDbType.VarChar;
                ParPersona.Size = 20;
                ParPersona.Value = Empresas.Persona;
                SqlCmd.Parameters.Add(ParPersona);


                SqlParameter ParRUC = new SqlParameter();
                ParRUC.ParameterName = "@RUC";
                ParRUC.SqlDbType = SqlDbType.VarChar;
                ParRUC.Size = 20;
                ParRUC.Value = Empresas.RUC;
                SqlCmd.Parameters.Add(ParRUC);

                SqlParameter ParNombre_Comercial = new SqlParameter();
                ParNombre_Comercial.ParameterName = "@Nombre_Comercial";
                ParNombre_Comercial.SqlDbType = SqlDbType.VarChar;
                ParNombre_Comercial.Size = 20;
                ParNombre_Comercial.Value = Empresas.Nombre_Comercial;
                SqlCmd.Parameters.Add(ParNombre_Comercial);

                SqlParameter ParSlogan = new SqlParameter();
                ParSlogan.ParameterName = "@Slogan";
                ParSlogan.SqlDbType = SqlDbType.VarChar;
                ParSlogan.Size = 8;
                ParSlogan.Value = Empresas.Slogan;
                SqlCmd.Parameters.Add(ParSlogan);


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
        public string Editar(DEmpresas Empresas) 
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
                SqlCmd.CommandText = "speditar_Empresas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                /*SqlParameter ParId = new SqlParameter();
                ParId.ParameterName = "@Id";
                ParId.SqlDbType = SqlDbType.Int;
                ParId.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParId);*/

                SqlParameter ParPersona = new SqlParameter();
                ParPersona.ParameterName = "@Persona";
                ParPersona.SqlDbType = SqlDbType.VarChar;
                ParPersona.Size = 20;
                ParPersona.Value = Empresas.Persona;
                SqlCmd.Parameters.Add(ParPersona);


                SqlParameter ParRUC = new SqlParameter();
                ParRUC.ParameterName = "@RUC";
                ParRUC.SqlDbType = SqlDbType.VarChar;
                ParRUC.Size = 20;
                ParRUC.Value = Empresas.RUC;
                SqlCmd.Parameters.Add(ParRUC);

                SqlParameter ParNombre_Comercial = new SqlParameter();
                ParNombre_Comercial.ParameterName = "@Nombre_Comercial";
                ParNombre_Comercial.SqlDbType = SqlDbType.VarChar;
                ParNombre_Comercial.Size = 20;
                ParNombre_Comercial.Value = Empresas.Nombre_Comercial;
                SqlCmd.Parameters.Add(ParNombre_Comercial);

                SqlParameter ParSlogan = new SqlParameter();
                ParSlogan.ParameterName = "@Slogan";
                ParSlogan.SqlDbType = SqlDbType.VarChar;
                ParSlogan.Size = 8;
                ParSlogan.Value = Empresas.Slogan;
                SqlCmd.Parameters.Add(ParSlogan);


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
        public string Eliminar(DEmpresas Empresas)
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
                SqlCmd.CommandText = "speliminar_Empresas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParRUC = new SqlParameter();
                ParRUC.ParameterName = "@RUC";
                ParRUC.SqlDbType = SqlDbType.Int;
                ParRUC.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParRUC);

                
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
            DataTable DtResultado = new DataTable("Empresas");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spmostrar_Empresas";
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
        public DataTable BuscarNombre(DEmpresas Empresas)
        {
            DataTable DtResultado = new DataTable("Empresas");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spbuscar_Empresas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParTextoBuscar = new SqlParameter();
                ParTextoBuscar.ParameterName = "@textobuscar";
                ParTextoBuscar.SqlDbType = SqlDbType.VarChar;
                ParTextoBuscar.Size = 50;
                ParTextoBuscar.Value = Empresas.TextoBuscar;
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
