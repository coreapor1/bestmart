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
    public class Usuario
        {
        private string nombreUsuario;
        public string NombreUsuario { get; set; }
        private string contrasena;
        public string Contrasena { get; set; }
        private Conexion sqlCon = new Conexion();


        public string getContrasena(string u)
            {

            string cont;
            string com = "SELECT  db_BestMart.dbo.VerificaUsuario(@Usuario)";
            SqlConnection conexion = sqlCon.CreateConnection();
            SqlCommand comando = sqlCon.CreateCommand(com, conexion);
            comando.Parameters.AddWithValue("@Usuario", u);
            conexion.Open();
            cont = comando.ExecuteScalar().ToString();
            conexion.Close();

            return cont;
            }
        }//fin class Usuario
    }
