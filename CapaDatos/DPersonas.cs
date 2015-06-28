using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class DPersonas
    {
        private int _IsPersonaFisica;
        private string _Cedula;
        private string _Nombre;
        private string _Apellido1;
        private string _Apellido2;
        private string _Direccion;
        private string _Telefono;
        private string _Telefax;
        private string _Celular;
        private string _Email;
        

        private string _TextoBuscar;

        
        public int IsPersonaFisica
        {
            get { return _IsPersonaFisica; }
            set { _IsPersonaFisica = value; }
        }
        
        public string Cedula
        {
            get { return _Cedula; }
            set { _Cedula = value; }
        }

        public string Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }

        public string Apellido1
        {
            get { return _Apellido1; }
            set { _Apellido1 = value; }
        }

        public string Apellido2
        {
            get { return _Apellido2; }
            set { _Apellido2 = value; }
        }

        public string Direccion
        {
            get { return _Direccion; }
            set { _Direccion = value; }
        }

        public string Telefono
        {
            get { return _Telefono; }
            set { _Telefono = value; }
        }

        public string Telefax
        {
            get { return _Telefax; }
            set { _Telefax = value; }
        }

        public string Celular
        {
            get { return _Celular; }
            set { _Celular = value; }
        }

        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        public string TextoBuscar
        {
            get { return _TextoBuscar; }
            set { _TextoBuscar = value; }
        }

        
        //constructor vacio 

        public DPersonas()
        {

        }

        //constructor con parametros 

        public DPersonas(int IsPersonaFisica, string Cedula, string nombre, string Apellido1, string Apellido2, string Direccion, 
            string Telefono, string Telefax, string Celular, string Email, string textobuscar)
        {
            this.IsPersonaFisica = IsPersonaFisica;
            this.Cedula = Cedula;
            this.Nombre = nombre;
            this.Apellido1 = Apellido1;
            this.Apellido2 = Apellido2;
            this.Direccion = Direccion;
            this.Telefono = Telefono;
            this.Telefax = Telefax;
            this.Celular = Celular;
            this.Email = Email;
            this.TextoBuscar = textobuscar;
        }


        //Metodo insertar 

        public string Insertar(DPersonas Personas) 
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
                SqlCmd.CommandText = "spinsertar_Personas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParIsPersonaFisica = new SqlParameter();
                ParIsPersonaFisica.ParameterName = "@IsPersonaFisica";
                ParIsPersonaFisica.SqlDbType = SqlDbType.Bit;
                ParIsPersonaFisica.Size = 1;
                ParIsPersonaFisica.Value = Personas.IsPersonaFisica;
                SqlCmd.Parameters.Add(ParIsPersonaFisica);

                SqlParameter ParCedula = new SqlParameter();
                ParCedula.ParameterName = "@Cedula";
                ParCedula.SqlDbType = SqlDbType.VarChar;
                ParCedula.Size = 15;
                ParCedula.Value = Personas.Cedula;
                SqlCmd.Parameters.Add(ParCedula);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName = "@nombre";
                ParNombre.SqlDbType = SqlDbType.VarChar;
                ParNombre.Size = 20;
                ParNombre.Value = Personas.Nombre;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellido1 = new SqlParameter();
                ParApellido1.ParameterName = "@Apellido1";
                ParApellido1.SqlDbType = SqlDbType.VarChar;
                ParApellido1.Size = 20;
                ParApellido1.Value = Personas.Apellido1;
                SqlCmd.Parameters.Add(ParApellido1);

                SqlParameter ParApellido2 = new SqlParameter();
                ParApellido2.ParameterName = "@Apellido2";
                ParApellido2.SqlDbType = SqlDbType.VarChar;
                ParApellido2.Size = 20;
                ParApellido2.Value = Personas.Apellido2;
                SqlCmd.Parameters.Add(ParApellido2);

                SqlParameter ParDireccion = new SqlParameter();
                ParDireccion.ParameterName = "@Direccion";
                ParDireccion.SqlDbType = SqlDbType.VarChar;
                ParDireccion.Size = 20;
                ParDireccion.Value = Personas.Direccion;
                SqlCmd.Parameters.Add(ParDireccion);

                SqlParameter ParTelefono = new SqlParameter();
                ParTelefono.ParameterName = "@Telefono";
                ParTelefono.SqlDbType = SqlDbType.VarChar;
                ParTelefono.Size = 8;
                ParTelefono.Value = Personas.Telefono;
                SqlCmd.Parameters.Add(ParTelefono);

                SqlParameter ParTelefax = new SqlParameter();
                ParTelefax.ParameterName = "@Telefax";
                ParTelefax.SqlDbType = SqlDbType.VarChar;
                ParTelefax.Size = 8;
                ParTelefax.Value = Personas.Telefax;
                SqlCmd.Parameters.Add(ParTelefax);

                SqlParameter ParCelular = new SqlParameter();
                ParCelular.ParameterName = "@Celular";
                ParCelular.SqlDbType = SqlDbType.VarChar;
                ParCelular.Size = 8;
                ParCelular.Value = Personas.Celular;
                SqlCmd.Parameters.Add(ParCelular);

                SqlParameter ParEmail = new SqlParameter();
                ParEmail.ParameterName = "@Email";
                ParEmail.SqlDbType = SqlDbType.VarChar;
                ParEmail.Size = 50;
                ParEmail.Value = Personas.Email;
                SqlCmd.Parameters.Add(ParEmail);

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
        public string Editar(DPersonas Personas) 
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
                SqlCmd.CommandText = "speditar_Personas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParIsPersonaFisica = new SqlParameter();
                ParIsPersonaFisica.ParameterName = "@IsPersonaFisica";
                ParIsPersonaFisica.SqlDbType = SqlDbType.Bit;
                ParIsPersonaFisica.Size = 1;
                ParIsPersonaFisica.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParIsPersonaFisica);

                SqlParameter ParCedula = new SqlParameter();
                ParCedula.ParameterName = "@Cedula";
                ParCedula.SqlDbType = SqlDbType.VarChar;
                ParCedula.Size = 15;
                ParCedula.Direction = ParameterDirection.Output;
                SqlCmd.Parameters.Add(ParCedula);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName = "@Nombre";
                ParNombre.SqlDbType = SqlDbType.VarChar;
                ParNombre.Size = 20;
                ParNombre.Value = Personas.Nombre;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellido1 = new SqlParameter();
                ParApellido1.ParameterName = "@Apellido1";
                ParApellido1.SqlDbType = SqlDbType.VarChar;
                ParApellido1.Size = 20;
                ParApellido1.Value = Personas.Apellido1;
                SqlCmd.Parameters.Add(ParApellido1);

                SqlParameter ParApellido2 = new SqlParameter();
                ParApellido2.ParameterName = "@Apellido2";
                ParApellido2.SqlDbType = SqlDbType.VarChar;
                ParApellido2.Size = 20;
                ParApellido2.Value = Personas.Apellido2;
                SqlCmd.Parameters.Add(ParApellido2);

                SqlParameter ParDireccion = new SqlParameter();
                ParDireccion.ParameterName = "@Direccion";
                ParDireccion.SqlDbType = SqlDbType.VarChar;
                ParDireccion.Size = 20;
                ParDireccion.Value = Personas.Direccion;
                SqlCmd.Parameters.Add(ParDireccion);

                SqlParameter ParTelefono = new SqlParameter();
                ParTelefono.ParameterName = "@Telefono";
                ParTelefono.SqlDbType = SqlDbType.VarChar;
                ParTelefono.Size = 8;
                ParTelefono.Value = Personas.Telefono;
                SqlCmd.Parameters.Add(ParTelefono);

                SqlParameter ParTelefax = new SqlParameter();
                ParTelefax.ParameterName = "@Telefax";
                ParTelefax.SqlDbType = SqlDbType.VarChar;
                ParTelefax.Size = 8;
                ParTelefax.Value = Personas.Telefax;
                SqlCmd.Parameters.Add(ParTelefax);

                SqlParameter ParCelular = new SqlParameter();
                ParCelular.ParameterName = "@Celular";
                ParCelular.SqlDbType = SqlDbType.VarChar;
                ParCelular.Size = 8;
                ParCelular.Value = Personas.Celular;
                SqlCmd.Parameters.Add(ParCelular);

                SqlParameter ParEmail = new SqlParameter();
                ParEmail.ParameterName = "@Email";
                ParEmail.SqlDbType = SqlDbType.VarChar;
                ParEmail.Size = 50;
                ParEmail.Value = Personas.Email;
                SqlCmd.Parameters.Add(ParEmail);


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
        public string Eliminar(DPersonas Personas)
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
                SqlCmd.CommandText = "speliminar_Personas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParCedula = new SqlParameter();
                ParCedula.ParameterName = "@Cedula";
                ParCedula.SqlDbType = SqlDbType.Int;
                ParCedula.Value = Personas.Cedula;
                SqlCmd.Parameters.Add(ParCedula);

                
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
            DataTable DtResultado = new DataTable("Personas");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spmostrar_Personas";
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
        public DataTable BuscarNombre(DPersonas Personas)
        {
            DataTable DtResultado = new DataTable("Personas");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spbuscar_Personas";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParTextoBuscar = new SqlParameter();
                ParTextoBuscar.ParameterName = "@textobuscar";
                ParTextoBuscar.SqlDbType = SqlDbType.VarChar;
                ParTextoBuscar.Size = 50;
                ParTextoBuscar.Value = Personas.TextoBuscar;
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