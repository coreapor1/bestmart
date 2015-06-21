using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CapaDatos
{

    public class Conexion
    {
    // creo un string sqlconnection con la informacion para conectarse a la base de datos 
        private string sqlConnection = "Data Source=LACOMPU; Initial Catalog=db_BestMart; Integrated Security=true";
        public static string Cn = "Data Source=LACOMPU; Initial Catalog=db_BestMart; Integrated Security=true";
    
    // property to get access on the class 
    public string SQLConnection
        {
        get
            {
            return sqlConnection;
            }
        }

    // SqlConnection: method to create the connection  with the db 

    public SqlConnection CreateConnection()
        {
        SqlConnection connection = new SqlConnection(sqlConnection);
        return connection;
        }

    /*SqlCommand: equivale a una instruccion de SQL, o 
     SP que se ejecuta en la base de datos
          
     */

    public SqlCommand CreateCommand(SqlConnection cnn)
        {
        SqlCommand sqlcommand = new SqlCommand(sqlConnection, cnn);
        return sqlcommand;
        }
    public SqlCommand CreateCommand(String q, SqlConnection cnn)
        {
        SqlCommand sqlcommand = new SqlCommand(q, cnn);
        return sqlcommand;
        }
    }//fin class Conexion
}//fin namespace CapaDatos
