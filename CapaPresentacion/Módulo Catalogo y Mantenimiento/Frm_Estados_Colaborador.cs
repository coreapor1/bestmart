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
    public partial class Frm_Estados_Colaborador : Form
    {
        private bool IsNuevo = false;
        private bool IsEditar = false;

        public Frm_Estados_Colaborador()
        {
            InitializeComponent();

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            this.IsNuevo = true;
            this.IsEditar = false;
            this.Botones();
            this.Limpiar();
            this.Habilitar(true);
            this.txtbNombre.Focus();
        

        }

        private void dgvListado_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Mostrar()
        {
            this.dgvListado.DataSource = NEstado_Colaborador.Mostrar();
            this.OcultarColumnas();
            lblTotal.Text = "Total de registros: " + Convert.ToString(dgvListado.Rows.Count);

        }

        private void OcultarColumnas()
        {
            this.dgvListado.Columns[0].Visible = false;
           
        }


        private void Frm_Estados_Colaborador_Load(object sender, EventArgs e)
        {
            this.Top = 0;
            this.Left = 0;
            this.Mostrar();
            this.Habilitar(false);
            this.Botones();
        }

        private void tbPageListado_Click(object sender, EventArgs e)
        {

        }

        private void Botones()
        {
            if (this.IsNuevo || this.IsEditar)
            {
                this.Habilitar(true);
                this.btnNuevo.Enabled = false;
                this.btnGuardar.Enabled = true;
                this.btnEditar.Enabled = false;
                this.btnCancelar.Enabled = true;
            }
            else
            {
                this.Habilitar(false);
                this.btnNuevo.Enabled = true;
                this.btnGuardar.Enabled = false;
                this.btnEditar.Enabled = true;
                this.btnCancelar.Enabled = false;

            }
        }

        private void Habilitar(bool valor)
        {
            this.txtbNombre.ReadOnly = !valor;
           
        }

        private void Limpiar()
        {

            this.txtbNombre.Text = string.Empty;


        }

    }
}
