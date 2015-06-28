namespace CapaPresentacion
    {
    partial class Frm_Ventas_Facturacion_ApertCierre
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
            this.lbl_ingresarApertura = new System.Windows.Forms.Label();
            this.lbl_ingresarCierre = new System.Windows.Forms.Label();
            this.txt_ingresarApertura = new System.Windows.Forms.TextBox();
            this.txt_ingresarCierre = new System.Windows.Forms.TextBox();
            this.btn_ingresarApertura = new System.Windows.Forms.Button();
            this.btn_ingresarCierre = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbl_ingresarApertura
            // 
            this.lbl_ingresarApertura.AutoSize = true;
            this.lbl_ingresarApertura.Location = new System.Drawing.Point(26, 23);
            this.lbl_ingresarApertura.Name = "lbl_ingresarApertura";
            this.lbl_ingresarApertura.Size = new System.Drawing.Size(92, 13);
            this.lbl_ingresarApertura.TabIndex = 0;
            this.lbl_ingresarApertura.Text = "Registrar Apertura";
            // 
            // lbl_ingresarCierre
            // 
            this.lbl_ingresarCierre.AutoSize = true;
            this.lbl_ingresarCierre.Location = new System.Drawing.Point(29, 75);
            this.lbl_ingresarCierre.Name = "lbl_ingresarCierre";
            this.lbl_ingresarCierre.Size = new System.Drawing.Size(79, 13);
            this.lbl_ingresarCierre.TabIndex = 1;
            this.lbl_ingresarCierre.Text = "Registrar Cierre";
            // 
            // txt_ingresarApertura
            // 
            this.txt_ingresarApertura.Location = new System.Drawing.Point(145, 23);
            this.txt_ingresarApertura.Name = "txt_ingresarApertura";
            this.txt_ingresarApertura.Size = new System.Drawing.Size(100, 20);
            this.txt_ingresarApertura.TabIndex = 2;
            // 
            // txt_ingresarCierre
            // 
            this.txt_ingresarCierre.Location = new System.Drawing.Point(145, 72);
            this.txt_ingresarCierre.Name = "txt_ingresarCierre";
            this.txt_ingresarCierre.Size = new System.Drawing.Size(100, 20);
            this.txt_ingresarCierre.TabIndex = 3;
            // 
            // btn_ingresarApertura
            // 
            this.btn_ingresarApertura.Location = new System.Drawing.Point(292, 19);
            this.btn_ingresarApertura.Name = "btn_ingresarApertura";
            this.btn_ingresarApertura.Size = new System.Drawing.Size(75, 23);
            this.btn_ingresarApertura.TabIndex = 4;
            this.btn_ingresarApertura.Text = "Registrar";
            this.btn_ingresarApertura.UseVisualStyleBackColor = true;
            // 
            // btn_ingresarCierre
            // 
            this.btn_ingresarCierre.Location = new System.Drawing.Point(292, 65);
            this.btn_ingresarCierre.Name = "btn_ingresarCierre";
            this.btn_ingresarCierre.Size = new System.Drawing.Size(75, 23);
            this.btn_ingresarCierre.TabIndex = 5;
            this.btn_ingresarCierre.Text = "Registrar";
            this.btn_ingresarCierre.UseVisualStyleBackColor = true;
            // 
            // Frm_Ventas_Facturacion_ApertCierre
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(455, 273);
            this.Controls.Add(this.btn_ingresarCierre);
            this.Controls.Add(this.btn_ingresarApertura);
            this.Controls.Add(this.txt_ingresarCierre);
            this.Controls.Add(this.txt_ingresarApertura);
            this.Controls.Add(this.lbl_ingresarCierre);
            this.Controls.Add(this.lbl_ingresarApertura);
            this.Name = "Frm_Ventas_Facturacion_ApertCierre";
            this.Text = "Apertura y Cierre de Caja";
            this.ResumeLayout(false);
            this.PerformLayout();

            }

        #endregion

        private System.Windows.Forms.Label lbl_ingresarApertura;
        private System.Windows.Forms.Label lbl_ingresarCierre;
        private System.Windows.Forms.TextBox txt_ingresarApertura;
        private System.Windows.Forms.TextBox txt_ingresarCierre;
        private System.Windows.Forms.Button btn_ingresarApertura;
        private System.Windows.Forms.Button btn_ingresarCierre;
        }
    }