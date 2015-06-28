using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using CapaNegocio;

namespace CapaPresentacion
{
    public partial class Frm_Personas : Form
    {
        private bool IsNuevo = false;
        private bool IsEditar = false;

        public Frm_Personas()
        {
            InitializeComponent();
            this.ttmensaje.SetToolTip(this.txtbNombre, "Ingrese el nombre del Empleado");
        }


        //mostrar mensaje de confirmcion
        private void MensajeOk(string mensaje)
        {
            MessageBox.Show(mensaje, "Sistema de venta", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        //Mostar mensaje de error

        private void MensajeError(string mensaje)
        {
            MessageBox.Show(mensaje, "Sistema de venta", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }

        //Limpiar todos los controles del form

        private void Limpiar()
        {

            this.txtbNombre.Text = string.Empty;
            this.txtbApellido1.Text = string.Empty;
            this.txtbApellido2.Text = string.Empty;
            this.txtbCedula.Text = string.Empty;
            this.txtbEmail.Text = string.Empty;
            this.txtbDireccion.Text = string.Empty;
            this.txtbTelefono.Text = string.Empty;

        }

        //Habilitar los controles del form

        private void Habilitar(bool valor)
        {
            this.txtbNombre.ReadOnly = !valor;
            this.txtbApellido1.ReadOnly = !valor;
            this.txtbApellido2.ReadOnly = !valor;
            this.txtbCedula.ReadOnly = !valor;
            this.txtbEmail.ReadOnly = !valor;
            this.txtbDireccion.ReadOnly = !valor;
            this.txtbTelefono.ReadOnly = !valor;
        }


        //habilitar los botones 

        private void Botones()
        {
            if (this.IsNuevo || this.IsEditar)
            {
                this.Habilitar(true);
                this.btnnuevo.Enabled = false;
                this.btnguardar.Enabled = true;
                this.btneditar.Enabled = false;
                this.btncancelar.Enabled = true;
            }
            else
            {
                this.Habilitar(false);
                this.btnnuevo.Enabled = true;
                this.btnguardar.Enabled = false;
                this.btneditar.Enabled = true;
                this.btncancelar.Enabled = false;

            }
        }

        //metodo para ocultar columnas

        private void OcultarColumnas()
        {
            this.dataListado.Columns[0].Visible = false;
            //this.dataListado.Columns[1].Visible = false;
        }

        //metodo mostrar
        private void Mostrar()
        {
            this.dataListado.DataSource = NPersonas.Mostrar();
            this.OcultarColumnas();
            lbltotal.Text = "Total de registros: " + Convert.ToString(dataListado.Rows.Count);

        }
        //metodo buscarnombre 

        private void BuscarNombre()
        {
            this.dataListado.DataSource = NPersonas.BuscarNombre(this.txtBuscar.Text);
            this.OcultarColumnas();
            lbltotal.Text = "Total de registros: " + Convert.ToString(dataListado.Rows.Count);

        }


        private void FrmCategoria_Load(object sender, EventArgs e)
        {
            this.Top = 0;
            this.Left = 0;
            this.Mostrar();
            this.Habilitar(false);
            this.Botones();
        }




        private void chkEliminar_CheckedChanged(object sender, EventArgs e)
        {

        }
        
        private void btneliminar_Click(object sender, EventArgs e)
        {

        }

        private void btnbuscar_Click(object sender, EventArgs e)
        {

        }

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {

        }
        
        private void btnnuevo_Click(object sender, EventArgs e)
        {
            this.IsNuevo = true;
            this.IsEditar = false;
            this.Botones();
            this.Limpiar();
            this.Habilitar(true);
            this.txtbNombre.Focus();
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                string rpta="";
                if(this.txtbNombre.Text == string.Empty)
                {
                    MensajeError("Falta ingresar algunos datos");
                    erroricono.SetError(txtbNombre,"Ingrese un nombre");

                }
                else
                {
                    int fisica;
                    if (this.cbPersoFisic.Checked) { fisica = 1; }
                    else { fisica = 0; }

                    if (this.IsNuevo)
                    {
                        rpta = NPersonas.Insertar(fisica, this.txtbCedula.Text.Trim(), this.txtbNombre.Text.Trim().ToUpper(),
                            this.txtbApellido1.Text.Trim(), this.txtbApellido2.Text.Trim(), this.txtbDireccion.Text.Trim(),
                            this.txtbTelefono.Text.Trim(), this.txtbTelefax.Text.Trim(), this.txtbCelular.Text.Trim(), 
                            this.txtbEmail.Text.Trim());

                    }
                    else 
                    {
                        rpta = NPersonas.Editar(fisica, this.txtbCedula.Text.Trim(), this.txtbNombre.Text.Trim().ToUpper(),
                            this.txtbApellido1.Text.Trim(), this.txtbApellido2.Text.Trim(), this.txtbDireccion.Text.Trim(),
                            this.txtbTelefono.Text.Trim(), this.txtbTelefax.Text.Trim(), this.txtbCelular.Text.Trim(),
                            this.txtbEmail.Text.Trim());
                        
                    }
                }

                    if (rpta.Equals("OK"))
                    {
                        if (IsNuevo)
                        {
                            this.MensajeOk("se inserto de forma correcta");
                        }
                    
                        else 
                        {
                            this.MensajeOk("se Actualizo de forma correcta");
                        }
                    }

                    else 
                    {
                        this.MensajeError(rpta);
                    }
                    this.IsNuevo= false;
                    this.IsEditar = false ;
                    this.Botones();
                    this.Limpiar();
                    this.Mostrar();

            
                
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message + ex.StackTrace);
            }
        
        }

        private void btneditar_Click(object sender, EventArgs e)
        {
            if (!this.txtbCedula.Text.Equals(""))
            {
                this.IsEditar = true;
                this.Botones();
                this.Habilitar(true);

            }
            else
            {
                this.MensajeError("Debe de seleccionar primero el registro a modificar");
            }
        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            this.IsNuevo = false;
            this.IsEditar = false;
            this.Botones();
            this.Limpiar();
            this.Habilitar(false);
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void btnbuscar_Click_1(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void txtBuscar_TextChanged_1(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void btneliminar_Click_1(object sender, EventArgs e)
        {
            try
            {
                DialogResult opcion;
                opcion = MessageBox.Show("Realmente desea eliminar los registros ", "Sistema de ventas ",
                MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                
                if (opcion == DialogResult.OK) 
                {   
                    string codigo;
                    string Rpta = "";

                    foreach (DataGridViewRow row in dataListado.Rows) 
                    {
                        if (Convert.ToBoolean(row.Cells[0].Value)) 
                        {
                            codigo = Convert.ToString(row.Cells[1].Value);
                            Rpta = NPersonas.Eliminar(Convert.ToString(codigo));

                            if (Rpta.Equals("OK")) 
                            {
                                this.MensajeOk("Se elimino correctamente el registro");
                            }
                            else
                            {
                                this.MensajeError(Rpta);
                            }
                        }
                    }
                   
                    this.Mostrar();
               
                }
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message + ex.StackTrace);
            }
        
        }

        private void dataListado_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dataListado.Columns["Eliminar"].Index)
            {
                DataGridViewCheckBoxCell chkEliminar = (DataGridViewCheckBoxCell)dataListado.Rows[e.RowIndex].Cells["Eliminar"];
                chkEliminar.Value = Convert.ToBoolean(chkEliminar.Value);
            }
        }

        private void Frm_Personas_Load(object sender, EventArgs e)
        {
            this.Top = 0;
            this.Left = 0;
            this.Mostrar();
            this.Habilitar(false);
            this.Botones();
        }

        private void dataListado_DoubleClick(object sender, EventArgs e)
        {
            this.cbPersoFisic.Checked = true;
            this.txtbCedula.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Cedula"].Value);
            this.txtbNombre.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Nombre"].Value);
            this.txtbApellido1.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Apellido1"].Value);
            this.txtbApellido2.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Apellido2"].Value);
            this.txtbDireccion.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Direccion"].Value);
            this.txtbTelefono.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Telefono"].Value);
            this.txtbTelefax.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Telefax"].Value);
            this.txtbCelular.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Celular"].Value);
            this.txtbEmail.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Email"].Value);
            
            this.tabControl1.SelectedIndex = 1;
        }

        private void chkEliminar_CheckedChanged_1(object sender, EventArgs e)
        {
            if (chkEliminar.Checked)
            {
                this.dataListado.Columns[0].Visible = true;
            }
            else
            {
                this.dataListado.Columns[0].Visible = false;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
