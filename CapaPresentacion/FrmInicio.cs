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
    public partial class Frm_Inicio : Form
    {
        public Frm_Inicio()
        {
            InitializeComponent();
        }
        
        private void btn_Seguridad_Click(object sender, EventArgs e)
        {

        }

        private void btn_CatalogoMantenimiento_Click(object sender, EventArgs e)
        {
            Frm_CatalogosMantenimiento frm_CatalogoMantenimiento = new Frm_CatalogosMantenimiento();
            frm_CatalogoMantenimiento.Show();
            this.Hide();
        }
        
        private void btn_Administrativo_Click(object sender, EventArgs e)
        {
            Frm_Administrativo frm_Administrativo = new Frm_Administrativo();
            frm_Administrativo.Show();
            this.Hide();
        }
        
        private void btn_Ventas_Click(object sender, EventArgs e)
        {
            Frm_Ventas frm_Ventas = new Frm_Ventas();
            frm_Ventas.Show();
            this.Hide();
        }
        
        private void btn_Inventario_Click(object sender, EventArgs e)
        {

        }

        private void btn_Salir_Click(object sender, EventArgs e)
        {
            Close();
        }

        

        

        
    }
}
