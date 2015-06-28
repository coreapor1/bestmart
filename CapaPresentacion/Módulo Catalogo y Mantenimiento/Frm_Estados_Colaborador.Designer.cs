namespace CapaPresentacion
{
    partial class Frm_Estados_Colaborador
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
            this.tbEstado_Colaborador = new System.Windows.Forms.TabControl();
            this.tbPageMantenimiento = new System.Windows.Forms.TabPage();
            this.txtbNombre = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnEditar = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnNuevo = new System.Windows.Forms.Button();
            this.tbPageListado = new System.Windows.Forms.TabPage();
            this.dgvListado = new System.Windows.Forms.DataGridView();
            this.lblTotal = new System.Windows.Forms.Label();
            this.tbEstado_Colaborador.SuspendLayout();
            this.tbPageMantenimiento.SuspendLayout();
            this.tbPageListado.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListado)).BeginInit();
            this.SuspendLayout();
            // 
            // tbEstado_Colaborador
            // 
            this.tbEstado_Colaborador.Controls.Add(this.tbPageMantenimiento);
            this.tbEstado_Colaborador.Controls.Add(this.tbPageListado);
            this.tbEstado_Colaborador.Location = new System.Drawing.Point(12, 12);
            this.tbEstado_Colaborador.Name = "tbEstado_Colaborador";
            this.tbEstado_Colaborador.SelectedIndex = 0;
            this.tbEstado_Colaborador.Size = new System.Drawing.Size(438, 279);
            this.tbEstado_Colaborador.TabIndex = 0;
            // 
            // tbPageMantenimiento
            // 
            this.tbPageMantenimiento.Controls.Add(this.txtbNombre);
            this.tbPageMantenimiento.Controls.Add(this.lblNombre);
            this.tbPageMantenimiento.Controls.Add(this.btnCancelar);
            this.tbPageMantenimiento.Controls.Add(this.btnEditar);
            this.tbPageMantenimiento.Controls.Add(this.btnGuardar);
            this.tbPageMantenimiento.Controls.Add(this.btnNuevo);
            this.tbPageMantenimiento.Location = new System.Drawing.Point(4, 22);
            this.tbPageMantenimiento.Name = "tbPageMantenimiento";
            this.tbPageMantenimiento.Padding = new System.Windows.Forms.Padding(3);
            this.tbPageMantenimiento.Size = new System.Drawing.Size(430, 253);
            this.tbPageMantenimiento.TabIndex = 0;
            this.tbPageMantenimiento.Text = "Mantenimiento";
            this.tbPageMantenimiento.UseVisualStyleBackColor = true;
            // 
            // txtbNombre
            // 
            this.txtbNombre.Location = new System.Drawing.Point(107, 55);
            this.txtbNombre.Name = "txtbNombre";
            this.txtbNombre.Size = new System.Drawing.Size(262, 20);
            this.txtbNombre.TabIndex = 11;
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(57, 62);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(44, 13);
            this.lblNombre.TabIndex = 10;
            this.lblNombre.Text = "Nombre";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(319, 174);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 9;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(227, 174);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(75, 23);
            this.btnEditar.TabIndex = 8;
            this.btnEditar.Text = "Editar";
            this.btnEditar.UseVisualStyleBackColor = true;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(132, 174);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 7;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            // 
            // btnNuevo
            // 
            this.btnNuevo.Location = new System.Drawing.Point(37, 174);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(75, 23);
            this.btnNuevo.TabIndex = 6;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.UseVisualStyleBackColor = true;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // tbPageListado
            // 
            this.tbPageListado.Controls.Add(this.lblTotal);
            this.tbPageListado.Controls.Add(this.dgvListado);
            this.tbPageListado.Location = new System.Drawing.Point(4, 22);
            this.tbPageListado.Name = "tbPageListado";
            this.tbPageListado.Padding = new System.Windows.Forms.Padding(3);
            this.tbPageListado.Size = new System.Drawing.Size(430, 253);
            this.tbPageListado.TabIndex = 1;
            this.tbPageListado.Text = "Listado";
            this.tbPageListado.UseVisualStyleBackColor = true;
            this.tbPageListado.Click += new System.EventHandler(this.tbPageListado_Click);
            // 
            // dgvListado
            // 
            this.dgvListado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListado.Location = new System.Drawing.Point(21, 48);
            this.dgvListado.Name = "dgvListado";
            this.dgvListado.Size = new System.Drawing.Size(370, 180);
            this.dgvListado.TabIndex = 0;
            this.dgvListado.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvListado_CellContentClick);
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Location = new System.Drawing.Point(287, 29);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(0, 13);
            this.lblTotal.TabIndex = 1;
            // 
            // Frm_Estados_Colaborador
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(462, 303);
            this.Controls.Add(this.tbEstado_Colaborador);
            this.Name = "Frm_Estados_Colaborador";
            this.Text = "Frm_Estados_Colaborador";
            this.Load += new System.EventHandler(this.Frm_Estados_Colaborador_Load);
            this.tbEstado_Colaborador.ResumeLayout(false);
            this.tbPageMantenimiento.ResumeLayout(false);
            this.tbPageMantenimiento.PerformLayout();
            this.tbPageListado.ResumeLayout(false);
            this.tbPageListado.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListado)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tbEstado_Colaborador;
        private System.Windows.Forms.TabPage tbPageMantenimiento;
        private System.Windows.Forms.TabPage tbPageListado;
        private System.Windows.Forms.TextBox txtbNombre;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnNuevo;
        private System.Windows.Forms.DataGridView dgvListado;
        private System.Windows.Forms.Label lblTotal;

    }
}