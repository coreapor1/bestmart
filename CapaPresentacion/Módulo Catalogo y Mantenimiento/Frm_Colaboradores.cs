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
    public partial class Frm_Colaboradores : Form
    {
        private bool IsNuevo = false;
        private bool IsEditar = false;

        public Frm_Colaboradores()
        {
            InitializeComponent();
            this.ttmensaje.SetToolTip(this.cmbPersona, "Ingrese Persona");
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

            this.cmbPersona.Text = string.Empty;
            this.cmbEmpleador.Text = string.Empty;
            this.cmbEstado.Text = string.Empty;
            this.txtId.Text = string.Empty;
            

        }

        //Habilitar los controles del form

        private void Habilitar(bool valor)
        {
            //this.cmbPersona.ReadOnly = !valor;
            //this.cmbEmpleador.ReadOnly = !valor;
            //this.cmbEstado.ReadOnly = !valor;
            //this.txtId.ReadOnly = !valor;
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
            this.dataListado.Columns[1].Visible = false;
        }

        //metodo mostrar
        private void Mostrar()
        {
            this.dataListado.DataSource = NColaboradores.Mostrar();
            this.OcultarColumnas();
            lbltotal.Text = "Total de registros: " + Convert.ToString(dataListado.Rows.Count);

        }
        //metodo buscarnombre 

        private void BuscarNombre()
        {
            this.dataListado.DataSource = NColaboradores.BuscarNombre(this.txtBuscar.Text);
            this.OcultarColumnas();
            lbltotal.Text = "Total de registros: " + Convert.ToString(dataListado.Rows.Count);

        }


        private void btnnuevo_Click(object sender, EventArgs e)
        {
            this.IsNuevo = true;
            this.IsEditar = false;
            this.Botones();
            this.Limpiar();
            this.Habilitar(true);
            this.cmbPersona.Focus();
        }

        

        private void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                string rpta="";
                if(this.cmbPersona.Text == string.Empty)
                {
                    MensajeError("Falta ingresar algunos datos");
                    erroricono.SetError(cmbPersona,"Ingrese un nombre");

                }
                else
                {
                    if (this.IsNuevo)
                    {
                        rpta = NColaboradores.Insertar(this.cmbPersona.ValueMember.Trim().ToUpper(),
                            this.cmbEmpleador.Text.Trim(), this.cmbEstado.Text.Trim());

                    }
                    else 
                    {
                        rpta = NColaboradores.Editar(this.txtId.Text.Trim(), this.cmbPersona.ValueMember,
                        this.cmbEmpleador.ValueMember, this.cmbEstado.ValueMember);
                        
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
            if (!this.txtId.Text.Equals(""))
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

        private void Frm_Colaboradores_Load(object sender, EventArgs e)
        {
            this.Top = 0;
            this.Left = 0;
            this.Mostrar();
            this.Habilitar(false);
            this.Botones();

            //Rellena los comboBox con los datos
            DataTable dsPersonas = NPersonas.Mostrar();
            this.cmbPersona.DataSource = dsPersonas.DefaultView;
            this.cmbPersona.ValueMember = "PK_id";
            this.cmbPersona.DisplayMember = "cedula";

            //Rellena los comboBox con los datos
            DataTable dsEmpresas = NEmpresas.Mostrar();
            this.cmbEmpleador.DataSource = dsEmpresas.DefaultView;
            this.cmbEmpleador.ValueMember = "PK_id";
            this.cmbEmpleador.DisplayMember = "nombre_comercial";

            //Rellena los comboBox con los datos
            DataTable dsEmpresasEstados = NEstado_Colaborador.Mostrar();
            this.cmbEmpleador.DataSource = dsEmpresas.DefaultView;
            this.cmbEmpleador.ValueMember = "PK_id";
            this.cmbEmpleador.DisplayMember = "nombre_comercial";

        }

        private void dataListado_DoubleClick(object sender, EventArgs e)
        {
            this.txtId.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["Id"].Value);
            this.cmbPersona.SelectedItem = Convert.ToString(this.dataListado.CurrentRow.Cells["Persona"].Value);
            this.cmbEmpleador.SelectedItem = Convert.ToString(this.dataListado.CurrentRow.Cells["Empleador"].Value);
            this.cmbEstado.SelectedItem = Convert.ToString(this.dataListado.CurrentRow.Cells["Estado"].Value);
            

            this.tabControl1.SelectedIndex = 1;
        }

        private void chkEliminar_CheckedChanged(object sender, EventArgs e)
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

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void btnbuscar_Click(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void btneliminar_Click(object sender, EventArgs e)
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
            catch (Exception ex)
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

        private void cmbPersona_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cmbEstado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
