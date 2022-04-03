
namespace DataBaseProgram
{
    partial class Wyscigi
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Wyscigi));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.idwyściguDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nazwawyściguDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.wyścigiBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.f_oneDataSet = new DataBaseProgram.f_oneDataSet();
            this.wyścigiTableAdapter = new DataBaseProgram.f_oneDataSetTableAdapters.wyścigiTableAdapter();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.wyścigiBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idwyściguDataGridViewTextBoxColumn,
            this.nazwawyściguDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.wyścigiBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(9, 10);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(144, 411);
            this.dataGridView1.TabIndex = 0;
            // 
            // idwyściguDataGridViewTextBoxColumn
            // 
            this.idwyściguDataGridViewTextBoxColumn.DataPropertyName = "id_wyścigu";
            this.idwyściguDataGridViewTextBoxColumn.HeaderText = "id_wyścigu";
            this.idwyściguDataGridViewTextBoxColumn.Name = "idwyściguDataGridViewTextBoxColumn";
            this.idwyściguDataGridViewTextBoxColumn.ReadOnly = true;
            this.idwyściguDataGridViewTextBoxColumn.Visible = false;
            // 
            // nazwawyściguDataGridViewTextBoxColumn
            // 
            this.nazwawyściguDataGridViewTextBoxColumn.DataPropertyName = "nazwa_wyścigu";
            this.nazwawyściguDataGridViewTextBoxColumn.HeaderText = "nazwa_wyścigu";
            this.nazwawyściguDataGridViewTextBoxColumn.Name = "nazwawyściguDataGridViewTextBoxColumn";
            // 
            // wyścigiBindingSource
            // 
            this.wyścigiBindingSource.DataMember = "wyścigi";
            this.wyścigiBindingSource.DataSource = this.f_oneDataSet;
            // 
            // f_oneDataSet
            // 
            this.f_oneDataSet.DataSetName = "f_oneDataSet";
            this.f_oneDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // wyścigiTableAdapter
            // 
            this.wyścigiTableAdapter.ClearBeforeFill = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label1.Location = new System.Drawing.Point(156, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 29;
            this.label1.Text = "Nazwa Wyścigu";
            // 
            // textBox1
            // 
            this.textBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.wyścigiBindingSource, "nazwa_wyścigu", true));
            this.textBox1.Location = new System.Drawing.Point(159, 27);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(206, 20);
            this.textBox1.TabIndex = 27;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(265, 53);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(100, 64);
            this.button3.TabIndex = 31;
            this.button3.Text = "Zapisz Tabelę";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(159, 52);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(100, 65);
            this.button2.TabIndex = 30;
            this.button2.Text = "Usuń Rekord";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Wyscigi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1703, 842);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.dataGridView1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Wyscigi";
            this.Text = "Wyscigi";
            this.Load += new System.EventHandler(this.Wyscigi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.wyścigiBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private f_oneDataSet f_oneDataSet;
        private System.Windows.Forms.BindingSource wyścigiBindingSource;
        private f_oneDataSetTableAdapters.wyścigiTableAdapter wyścigiTableAdapter;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.DataGridViewTextBoxColumn idwyściguDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nazwawyściguDataGridViewTextBoxColumn;
    }
}