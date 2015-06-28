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
    public partial class Frm_CatalogosMantenimiento : Form
    {
        public Frm_CatalogosMantenimiento()
        {
            InitializeComponent();
        }
        
        private void msrp_Inicio_Click(object sender, EventArgs e)
        {
            Frm_Inicio frm_inicio = new Frm_Inicio();
            frm_inicio.Show();
            this.Hide();
        }

        private void msrp_Salir_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void menuStrip25_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        } 
    }
}
