using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaPresentacion
{
    public partial class Frm_Administrativo : Form
    {
        public Frm_Administrativo()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void Btn_inicio_Click(object sender, EventArgs e)
        {
            Frm_Inicio frminicio = new Frm_Inicio();
            frminicio.Show();
            this.Close();

        }

        

        private void Btn_EntradaSalida_Click(object sender, EventArgs e)
        {
            Frm_EntradaSalida frmEntradaSalida = new Frm_EntradaSalida();
            frmEntradaSalida.Show();
        }

        private void Btn_Devoluciones_Click(object sender, EventArgs e)
        {
            Frm_ReporteDevoluciones frmDevoluciones = new Frm_ReporteDevoluciones();
            frmDevoluciones.Show();
        }

        private void Btn_Descuentos_Click(object sender, EventArgs e)
        {
            Frm_ReporteDescuentos frmDescuentos = new Frm_ReporteDescuentos();
            frmDescuentos.Show();
        }

        private void Btn_Empleados_Click(object sender, EventArgs e)
        {
            //Frm_ReporteEmpleados frmempleados = new Frm_ReporteEmpleados();
            //frmempleados.Show();
        }
    }
}
