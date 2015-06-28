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
    public partial class Frm_Ventas_Facturacion : Form
        {
        public Frm_Ventas_Facturacion()
            {
            InitializeComponent();
            }

        private void btn_Ventas_Factura_Cobrar_Click(object sender, EventArgs e)
            {

            }

        private void btn_Ventas_Factura_AperturaCierre_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Facturacion_ApertCierre fvfAC = new Frm_Ventas_Facturacion_ApertCierre();
            fvfAC.Show();
            }
        }
    }
