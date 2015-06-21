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
    public partial class Frm_Empresas : Form
    {
        public Frm_Empresas()
        {
            InitializeComponent();
        }

        private void Frm_Empresas_Load(object sender, EventArgs e)
        {
            //Rellena los comboBox con los datos
            DataTable dsPersonas = NPersonas.Mostrar();
            this.cmbPersona.DataSource = dsPersonas.DefaultView;
            this.cmbPersona.ValueMember = "PK_id";
            this.cmbPersona.DisplayMember = "cedula";
        }
    }
}
