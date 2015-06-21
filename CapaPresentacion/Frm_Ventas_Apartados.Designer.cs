namespace CapaPresentacion
    {
    partial class Frm_Ventas_Apartados
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
            this.lbl_Apartados_Crear = new System.Windows.Forms.Label();
            this.lbl_Apartados_Consultar = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_Apart_Reporte = new System.Windows.Forms.Button();
            this.btn_Apart_Consultar = new System.Windows.Forms.Button();
            this.btn_Apart_Crear = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbl_Apartados_Crear
            // 
            this.lbl_Apartados_Crear.AutoSize = true;
            this.lbl_Apartados_Crear.Location = new System.Drawing.Point(54, 152);
            this.lbl_Apartados_Crear.Name = "lbl_Apartados_Crear";
            this.lbl_Apartados_Crear.Size = new System.Drawing.Size(78, 13);
            this.lbl_Apartados_Crear.TabIndex = 1;
            this.lbl_Apartados_Crear.Text = "Crear Apartado";
            // 
            // lbl_Apartados_Consultar
            // 
            this.lbl_Apartados_Consultar.AutoSize = true;
            this.lbl_Apartados_Consultar.Location = new System.Drawing.Point(217, 154);
            this.lbl_Apartados_Consultar.Name = "lbl_Apartados_Consultar";
            this.lbl_Apartados_Consultar.Size = new System.Drawing.Size(97, 13);
            this.lbl_Apartados_Consultar.TabIndex = 3;
            this.lbl_Apartados_Consultar.Text = "Consultar Apartado";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(387, 154);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(111, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Reporte de Apartados";
            // 
            // btn_Apart_Reporte
            // 
            this.btn_Apart_Reporte.Image = global::CapaPresentacion.Properties.Resources.Apartados_Reportes;
            this.btn_Apart_Reporte.Location = new System.Drawing.Point(377, 16);
            this.btn_Apart_Reporte.Name = "btn_Apart_Reporte";
            this.btn_Apart_Reporte.Size = new System.Drawing.Size(130, 130);
            this.btn_Apart_Reporte.TabIndex = 6;
            this.btn_Apart_Reporte.UseVisualStyleBackColor = true;
            this.btn_Apart_Reporte.Click += new System.EventHandler(this.btn_Apart_Reporte_Click);
            // 
            // btn_Apart_Consultar
            // 
            this.btn_Apart_Consultar.Image = global::CapaPresentacion.Properties.Resources.Apartados_Consultar;
            this.btn_Apart_Consultar.Location = new System.Drawing.Point(199, 15);
            this.btn_Apart_Consultar.Name = "btn_Apart_Consultar";
            this.btn_Apart_Consultar.Size = new System.Drawing.Size(130, 130);
            this.btn_Apart_Consultar.TabIndex = 5;
            this.btn_Apart_Consultar.UseVisualStyleBackColor = true;
            this.btn_Apart_Consultar.Click += new System.EventHandler(this.btn_Apart_Consultar_Click);
            // 
            // btn_Apart_Crear
            // 
            this.btn_Apart_Crear.Image = global::CapaPresentacion.Properties.Resources.Apartados_Crear;
            this.btn_Apart_Crear.Location = new System.Drawing.Point(26, 14);
            this.btn_Apart_Crear.Name = "btn_Apart_Crear";
            this.btn_Apart_Crear.Size = new System.Drawing.Size(130, 130);
            this.btn_Apart_Crear.TabIndex = 4;
            this.btn_Apart_Crear.UseVisualStyleBackColor = true;
            this.btn_Apart_Crear.Click += new System.EventHandler(this.btn_Apart_Crear_Click);
            // 
            // Frm_Ventas_Apartados
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(544, 422);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_Apart_Reporte);
            this.Controls.Add(this.btn_Apart_Consultar);
            this.Controls.Add(this.btn_Apart_Crear);
            this.Controls.Add(this.lbl_Apartados_Consultar);
            this.Controls.Add(this.lbl_Apartados_Crear);
            this.Name = "Frm_Ventas_Apartados";
            this.Text = "Apartados";
            this.Load += new System.EventHandler(this.Frm_Ventas_Apartados_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

            }

        #endregion

        private System.Windows.Forms.Label lbl_Apartados_Crear;
        private System.Windows.Forms.Label lbl_Apartados_Consultar;
        private System.Windows.Forms.Button btn_Apart_Crear;
        private System.Windows.Forms.Button btn_Apart_Consultar;
        private System.Windows.Forms.Button btn_Apart_Reporte;
        private System.Windows.Forms.Label label1;
        }
    }