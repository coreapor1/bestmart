namespace CapaPresentacion
    {
    partial class Frm_Ventas_Apartados_Consultar
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
            this.lbl_Ventas_Apart_Consult_IngresarCod = new System.Windows.Forms.Label();
            this.txt_Ventas_Apart_Consult_IngresarCod = new System.Windows.Forms.TextBox();
            this.btn_Ventas_Apart_Consult_IngresarCod = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // lbl_Ventas_Apart_Consult_IngresarCod
            // 
            this.lbl_Ventas_Apart_Consult_IngresarCod.AutoSize = true;
            this.lbl_Ventas_Apart_Consult_IngresarCod.Location = new System.Drawing.Point(31, 13);
            this.lbl_Ventas_Apart_Consult_IngresarCod.Name = "lbl_Ventas_Apart_Consult_IngresarCod";
            this.lbl_Ventas_Apart_Consult_IngresarCod.Size = new System.Drawing.Size(152, 13);
            this.lbl_Ventas_Apart_Consult_IngresarCod.TabIndex = 0;
            this.lbl_Ventas_Apart_Consult_IngresarCod.Text = "Ingrese el Codigo del Apartado";
            // 
            // txt_Ventas_Apart_Consult_IngresarCod
            // 
            this.txt_Ventas_Apart_Consult_IngresarCod.Location = new System.Drawing.Point(189, 10);
            this.txt_Ventas_Apart_Consult_IngresarCod.Name = "txt_Ventas_Apart_Consult_IngresarCod";
            this.txt_Ventas_Apart_Consult_IngresarCod.Size = new System.Drawing.Size(126, 20);
            this.txt_Ventas_Apart_Consult_IngresarCod.TabIndex = 1;
            // 
            // btn_Ventas_Apart_Consult_IngresarCod
            // 
            this.btn_Ventas_Apart_Consult_IngresarCod.Location = new System.Drawing.Point(341, 8);
            this.btn_Ventas_Apart_Consult_IngresarCod.Name = "btn_Ventas_Apart_Consult_IngresarCod";
            this.btn_Ventas_Apart_Consult_IngresarCod.Size = new System.Drawing.Size(75, 23);
            this.btn_Ventas_Apart_Consult_IngresarCod.TabIndex = 2;
            this.btn_Ventas_Apart_Consult_IngresarCod.Text = "Buscar";
            this.btn_Ventas_Apart_Consult_IngresarCod.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(25, 62);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(492, 383);
            this.dataGridView1.TabIndex = 3;
            // 
            // Frm_Ventas_Apartados_Consultar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(541, 482);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btn_Ventas_Apart_Consult_IngresarCod);
            this.Controls.Add(this.txt_Ventas_Apart_Consult_IngresarCod);
            this.Controls.Add(this.lbl_Ventas_Apart_Consult_IngresarCod);
            this.Name = "Frm_Ventas_Apartados_Consultar";
            this.Text = "Consultar Apartados";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

            }

        #endregion

        private System.Windows.Forms.Label lbl_Ventas_Apart_Consult_IngresarCod;
        private System.Windows.Forms.TextBox txt_Ventas_Apart_Consult_IngresarCod;
        private System.Windows.Forms.Button btn_Ventas_Apart_Consult_IngresarCod;
        private System.Windows.Forms.DataGridView dataGridView1;
        }
    }