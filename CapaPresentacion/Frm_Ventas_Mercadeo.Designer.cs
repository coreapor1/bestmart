namespace CapaPresentacion
    {
    partial class Frm_Ventas_Mercadeo
        {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
            {
            if (disposing && (components != null))
                {
                components.Dispose();
                }
            base.Dispose(disposing);
            }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
            {
            this.btn_Ventas_Mercadeo = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_Ventas_Mercadeo
            // 
            this.btn_Ventas_Mercadeo.Location = new System.Drawing.Point(81, 56);
            this.btn_Ventas_Mercadeo.Name = "btn_Ventas_Mercadeo";
            this.btn_Ventas_Mercadeo.Size = new System.Drawing.Size(130, 130);
            this.btn_Ventas_Mercadeo.TabIndex = 0;
            this.btn_Ventas_Mercadeo.Text = "Enviar Correo";
            this.btn_Ventas_Mercadeo.UseVisualStyleBackColor = true;
            // 
            // Frm_Ventas_Mercadeo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 273);
            this.Controls.Add(this.btn_Ventas_Mercadeo);
            this.Name = "Frm_Ventas_Mercadeo";
            this.Text = "Mercadeo";
            this.ResumeLayout(false);

            }

        #endregion

        private System.Windows.Forms.Button btn_Ventas_Mercadeo;
        }
    }