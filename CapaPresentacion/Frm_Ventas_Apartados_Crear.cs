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
    public partial class Frm_Ventas_Apartados_Crear : Form
        {
        public Frm_Ventas_Apartados_Crear()
            {
            InitializeComponent();
            }

        private void btn_Ventas_Apart_CrearApart_Click(object sender, EventArgs e)
            {
            Mostrar m = new Mostrar();  
            
            //dataGridView2.DataSource = m.Mostrar_Personas();
            dataGridView2.DataSource = m.Buscar_Personas("");
            }

        private void Frm_Ventas_Apartados_Crear_Load(object sender, EventArgs e)
            {

            }
        }
    }
