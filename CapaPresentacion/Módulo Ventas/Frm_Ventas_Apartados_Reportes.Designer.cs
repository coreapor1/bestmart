namespace CapaPresentacion
    {
    partial class Frm_Ventas_Apartados_Reportes
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btn_Ventas_Apart_Reporte = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(38, 53);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(444, 362);
            this.dataGridView1.TabIndex = 0;
            // 
            // btn_Ventas_Apart_Reporte
            // 
            this.btn_Ventas_Apart_Reporte.Location = new System.Drawing.Point(162, 13);
            this.btn_Ventas_Apart_Reporte.Name = "btn_Ventas_Apart_Reporte";
            this.btn_Ventas_Apart_Reporte.Size = new System.Drawing.Size(194, 23);
            this.btn_Ventas_Apart_Reporte.TabIndex = 1;
            this.btn_Ventas_Apart_Reporte.Text = "Ver Todos los Apartados";
            this.btn_Ventas_Apart_Reporte.UseVisualStyleBackColor = true;
            // 
            // Frm_Ventas_Apartados_Reportes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 444);
            this.Controls.Add(this.btn_Ventas_Apart_Reporte);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Frm_Ventas_Apartados_Reportes";
            this.Text = "Reportes de Apartados";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

            }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btn_Ventas_Apart_Reporte;
        }
    }