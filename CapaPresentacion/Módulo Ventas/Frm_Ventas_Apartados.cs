using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaPresentacion;

namespace CapaPresentacion
    {
    public partial class Frm_Ventas_Apartados : Form
        {
        public Frm_Ventas_Apartados()
            {
            InitializeComponent();
            }

        private void Frm_Ventas_Apartados_Load(object sender, EventArgs e)
            {

            }

        private void btn_Apart_Crear_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Apartados_Crear apart_Crear = new Frm_Ventas_Apartados_Crear();
            apart_Crear.Show();
            }

        private void btn_Apart_Consultar_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Apartados_Consultar apart_Consultar = new Frm_Ventas_Apartados_Consultar();
            apart_Consultar.Show();
            }

        private void btn_Apart_Reporte_Click(object sender, EventArgs e)
            {
            Frm_Ventas_Apartados_Reportes apart_Reporte = new Frm_Ventas_Apartados_Reportes();
            apart_Reporte.Show();
            }

        }
    }
