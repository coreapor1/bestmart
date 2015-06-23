using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CapaNegocio
    {
    public class Mostrar
        {

        public Mostrar() 
            { 
            //constructor vacio
            //Comentario Adicional solo de prueba para el Github
            }

        public DataTable Mostrar_Personas()
            {
            DataTable DtResultado = new DataTable("Mostrar_Personas");
            try
                {              
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Personas", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Personas


        public DataTable Buscar_Personas(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI y como no hay clase para persona aun
            DataTable DtResultado = new DataTable("Mostrar_Personas");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Personas", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@idPersona", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Personas


        public DataTable Mostrar_Empresas()
            {
            DataTable DtResultado = new DataTable("Mostrar_Empresas");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Empresas", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Empresas


        public DataTable Buscar_Empresas(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Empresas");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Empresas", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Empresas


        public DataTable Mostrar_Modulos()
            {
            DataTable DtResultado = new DataTable("Mostrar_Modulos");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Modulos", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Modulos


        public DataTable Buscar_Modulos(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Modulos");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Modulos", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Modulos

        public DataTable Mostrar_Submodulos()
            {
            DataTable DtResultado = new DataTable("Mostrar_Submodulos");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Submodulos", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Submodulos


        public DataTable Buscar_Submodulos(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Submodulos");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Submodulos", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Submodulos

        public DataTable Mostrar_Colaboradores()
            {
            DataTable DtResultado = new DataTable("Mostrar_Colaboradores");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Colaboradores", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Colaboradores


        public DataTable Buscar_Colaboradores(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Colaboradores");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Colaboradores", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Colaboradores


        public DataTable Mostrar_Tipos_Permiso()
            {
            DataTable DtResultado = new DataTable("Mostrar_Tipos_Permiso");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Tipos_Permiso", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Tipos_Permiso


        public DataTable Buscar_Tipos_Permiso(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Tipos_Permiso");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Tipos_Permiso", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Tipos_Permiso


        public DataTable Mostrar_Estados_Colaborador()
            {
            DataTable DtResultado = new DataTable("Mostrar_Estados_Colaborador");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Estados_Colaborador", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Estados_Colaborador


        public DataTable Buscar_Estados_Colaborador(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Estados_Colaborador");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Estados_Colaborador", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Estados_Colaborador


        public DataTable Mostrar_Roles()
            {
            DataTable DtResultado = new DataTable("Mostrar_Roles");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Roles", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Roles


        public DataTable Buscar_Roles(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Roles");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Roles", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Roles


        public DataTable Mostrar_Usuarios()
            {
            DataTable DtResultado = new DataTable("Mostrar_Usuarios");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Usuarios", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Usuarios


        public DataTable Buscar_Usuarios(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Usuarios");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Usuarios", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@id", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Usuarios


        public DataTable Mostrar_Usuario_Permisos_relations()
            {
            DataTable DtResultado = new DataTable("Mostrar_Usuario_Permisos_relations");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spmostrar_Usuario_Permisos_relations", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Mostrar_Usuario_Permisos_relations


        public DataTable Buscar_Usuario_Permisos_relations(string buscar)
            {
            //este metodo tira error porque lo que recibe el sp es un UI
            DataTable DtResultado = new DataTable("Mostrar_Usuario_Permisos_relations");
            try
                {
                Conexion c = new Conexion();
                SqlConnection SqlCon = c.CreateConnection();
                SqlCommand comando = c.CreateCommand(SqlCon);
                comando = new SqlCommand("spbuscar_Usuario_Permisos_relations", SqlCon);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@rol", SqlDbType.UniqueIdentifier).Value = buscar;
                SqlDataAdapter SqlDat = new SqlDataAdapter(comando);
                SqlDat.Fill(DtResultado);
                }
            catch (Exception ex)
                {
                MessageBox.Show(ex.ToString());
                DtResultado = null;
                }
            return DtResultado;
            }//fin Buscar_Usuario_Permisos_relations


        }//fin class Mostrar
    }
