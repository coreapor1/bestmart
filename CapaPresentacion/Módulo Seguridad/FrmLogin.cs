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
            //InitializeComponent();
            //txt_Contraseña.PasswordChar = '*';
        }

        private void btn_Entrar_Click(object sender, EventArgs e)
        {

            Frm_Inicio frm_inicio = new Frm_Inicio();                 
            frm_inicio.Show();                      
            this.Hide();
        //try
        //    {
        //    string c = (usuario.getContrasena(textBox1.Text).Trim());
        //    if (c != null)
        //        {
        //        if (c.Equals(textBox2.Text))
        //            {
        //            FrmInicio frminicio = new FrmInicio();
        //            frminicio.Show();
        //            this.Hide();
        //            }
        //        else { MessageBox.Show("Contrasena Incorrecta"); }
        //        }
        //    else { MessageBox.Show("Usuario No Existe"); }

        //    }
        //catch (Exception ex) { MessageBox.Show(ex.ToString()); }
        }//fin button1_Click

        private void lklbl_RecuperarContraseña_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //CapaPresentacion.Módulo_Seguridad.Frm_RecuperacionContraseña frmRecuperarContraseña = new Módulo_Seguridad.Frm_RecuperacionContraseña();
            //frmRecuperarContraseña.Show();
        }

    }
}
