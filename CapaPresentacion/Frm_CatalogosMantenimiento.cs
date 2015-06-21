﻿using System;
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

        private void button1_Click(object sender, EventArgs e)
        {
            Frm_Personas frmP = new Frm_Personas();
            frmP.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Frm_Colaboradores frmc = new Frm_Colaboradores();
            frmc.Show();
        }

        private void btnEmpresas_Click(object sender, EventArgs e)
        {
            Frm_Empresas frme = new Frm_Empresas();
            frme.Show();
        }
    }
}
