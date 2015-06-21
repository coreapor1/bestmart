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
    public partial class FrmLogin : Form
    {
        Usuario usuario = new Usuario();

        public FrmLogin()
        {
            InitializeComponent();
            textBox2.PasswordChar = '*';
        }

        private void button1_Click(object sender, EventArgs e)
        {
        try
            {
            string c = (usuario.getContrasena(textBox1.Text).Trim());
            if (c != null)
                {
                if (c.Equals(textBox2.Text))
                    {
                    FrmInicio frminicio = new FrmInicio();
                    frminicio.Show();
                    this.Hide();
                    }
                else { MessageBox.Show("Contrasena Incorrecta"); }
                }
            else { MessageBox.Show("Usuario No Existe"); }

            }
        catch (Exception ex) { MessageBox.Show(ex.ToString()); }
        }//fin button1_Click

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void FrmLogin_Load(object sender, EventArgs e)
            {

            }
    }
}
