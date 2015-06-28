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
    public partial class FrmInicio : Form
    {
        public FrmInicio()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FrmCategoria frmcategoria = new FrmCategoria();
            frmcategoria.Show();
        }

        private void registroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCategoria frmcategoria = new FrmCategoria();
            frmcategoria.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Frm_CatalogosMantenimiento frmP = new Frm_CatalogosMantenimiento();
            frmP.Show();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //Form1 frm = new Form1();
            //frm.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //Form1 frm = new Form1();
            //frm.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Frm_Administrativo FA = new Frm_Administrativo();
            FA.Show();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            
            this.Close();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            //Form1 frm = new Form1();
            //frm.Show();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            //Form1 frm = new Form1();
            //frm.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            //Form1 frm = new Form1();
            //frm.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Frm_Ventas frmVentas = new Frm_Ventas();
            frmVentas.Show();
        }

        private void FrmInicio_FormClosed(object sender, FormClosedEventArgs e)
        {

        }
    }
}
