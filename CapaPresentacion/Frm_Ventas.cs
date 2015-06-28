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
    public partial class Frm_Ventas : Form
        {
        public Frm_Ventas()
            {
            InitializeComponent();
            }

        private void Frm_Ventas_Load(object sender, EventArgs e)
            {

            }

        private void tabCtrl_ModVentas_Buscar_Click(object sender, EventArgs e)
            {

            }

        private void btn_Ventas_Apartados_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Apartados fva = new Frm_Ventas_Apartados();
            fva.Show();
            }

        private void btn_Ventas_Facturacion_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Facturacion fact = new Frm_Ventas_Facturacion();
            fact.Show();
            }

        private void btn_Ventas_Devoluciones_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Devoluciones dev = new Frm_Ventas_Devoluciones();
            dev.Show();
            }

        private void btn_Ventas_Mercadeo_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Mercadeo vent = new Frm_Ventas_Mercadeo();
            vent.Show();
            }
        }
    }
