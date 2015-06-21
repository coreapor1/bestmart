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
    public partial class FrmCategoria : Form
    {
        private bool IsNuevo = false;
        private bool IsEditar = false;


        public FrmCategoria()
        {
            InitializeComponent();
            this.ttmensaje.SetToolTip(this.txtnombre, "Ingrese el nombre de la categoria");
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
            this.txtnombre.Text = string.Empty;
            this.txtdescripcion.Text = string.Empty;
            this.txtidcategoria.Text = string.Empty;

        }

        //Habilitar los controles del form

        private void Habilitar(bool valor) 
        {
            this.txtnombre.ReadOnly = !valor;
            this.txtdescripcion.ReadOnly = !valor;
            this.txtidcategoria.ReadOnly = !valor;
        }


        //habilitar los botones 

        private void Botones() 
        {
            if (this.IsNuevo || this.IsEditar)//alt + 124
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
            this.dataListado.DataSource = NCategoria.Mostrar();
            this.OcultarColumnas();
            lbltotal.Text = "Total de registros: " + Convert.ToString(dataListado.Rows.Count);
        
        }
        //metodo buscarnombre 
        
        private void BuscarNombre()
        {
            this.dataListado.DataSource = NCategoria.BuscarNombre(this.txtBuscar.Text);
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

        private void btnbuscar_Click(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            this.BuscarNombre();
        }

        private void tabPage2_Click(object sender, EventArgs e)
        {
            

        }

        private void btnnuevo_Click(object sender, EventArgs e)
        {
            this.IsNuevo = true;
            this.IsEditar = false;
            this.Botones();
            this.Limpiar();
            this.Habilitar(true);
            this.txtnombre.Focus();
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                string rpta="";
                if(this.txtnombre.Text ==string.Empty)
                {
                    MensajeError("Falta ingresar algunos datos");
                    erroricono.SetError(txtnombre,"Ingrese un nombre");

                }
                else
                {
                    if (this.IsNuevo)
                    {
                        rpta = NCategoria.Insertar(this.txtnombre.Text.Trim().ToUpper(),
                            this.txtdescripcion.Text.Trim());

                    }
                    else 
                    {
                        rpta = NCategoria.Editar(this.txtidcategoria.Text.Trim(), this.txtnombre.Text.Trim().ToUpper(),
                        this.txtdescripcion.Text.Trim());
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

        private void dataListado_DoubleClick(object sender, EventArgs e)
        {
            this.txtidcategoria.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["idcategoria"].Value);
            this.txtnombre.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["nombre"].Value);
            this.txtdescripcion.Text = Convert.ToString(this.dataListado.CurrentRow.Cells["descripcion"].Value);

            this.tabControl1.SelectedIndex = 1;

        }

        private void btneditar_Click(object sender, EventArgs e)
        {
            if (this.txtidcategoria.Text.Equals(""))
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

        private void dataListado_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dataListado.Columns["Eliminar"].Index) 
            {
                DataGridViewCheckBoxCell chkEliminar = (DataGridViewCheckBoxCell)dataListado.Rows[e.RowIndex].Cells["Eliminar"];
                chkEliminar.Value = Convert.ToBoolean(chkEliminar.Value);
            }
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult opcion;
                opcion = MessageBox.Show("Realmente desea eliminar los registros ", "Sistema de ventas ", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (opcion == DialogResult.OK) 
                {   /*
                    string codigo;
                    string Rpta = "";

                    
                    foreach (DataGridviewRow row in dataListado.Rows) 
                    {
                        if (Convert.ToBoolean(row.Cells[0].Value)) 
                        {
                            codigo = Convert.ToString(row.Cells[1].Value);
                            Rpta = NCategoria.Eliminar(Convert.ToInt32(codigo));

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
                   */
                    this.Mostrar();
                }
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }

        
    }
}
