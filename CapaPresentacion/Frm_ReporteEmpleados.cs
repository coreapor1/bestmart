/*using System;
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
    public partial class Frm_ReporteEmpleados : Form
    {
        public Frm_ReporteEmpleados()
        {
            InitializeComponent();
        }

        private void Frm_ReporteEmpleados_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'BDVentasDataSet.Empleados' Puede moverla o quitarla según sea necesario.
            //this.EmpleadosTableAdapter.Fill(this.BDVentasDataSet.Empleados);

            //this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            
        }

        private void Btn_Busqueda_Click(object sender, EventArgs e)
        {
            //this.EmpleadosTableAdapter.verEmpleadosParametrizados(this.BDVentasDataSet.Empleados.txtPuesto.Text);

            //this.reportViewer1.RefreshReport();
        }

        private void Btn_todos_Click(object sender, EventArgs e)
        {
            this.EmpleadosTableAdapter.Fill(this.BDVentasDataSet.Empleados);

            this.reportViewer1.RefreshReport();
        }
    }
}
*/