
namespace DataBaseProgram
{
    partial class Zespoly
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Zespoly));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.idzespółDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nazwaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bolidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.silnikDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.imięszefaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nazwiskoszefaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.zdjęcieDataGridViewImageColumn = new System.Windows.Forms.DataGridViewImageColumn();
            this.zespółBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.f_oneDataSet = new DataBaseProgram.f_oneDataSet();
            this.zespółTableAdapter = new DataBaseProgram.f_oneDataSetTableAdapters.zespółTableAdapter();
            this.label6 = new System.Windows.Forms.Label();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.zespółBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idzespółDataGridViewTextBoxColumn,
            this.nazwaDataGridViewTextBoxColumn,
            this.bolidDataGridViewTextBoxColumn,
            this.silnikDataGridViewTextBoxColumn,
            this.imięszefaDataGridViewTextBoxColumn,
            this.nazwiskoszefaDataGridViewTextBoxColumn,
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn,
            this.zdjęcieDataGridViewImageColumn});
            this.dataGridView1.DataSource = this.zespółBindingSource;
            resources.ApplyResources(this.dataGridView1, "dataGridView1");
            this.dataGridView1.Name = "dataGridView1";
            // 
            // idzespółDataGridViewTextBoxColumn
            // 
            this.idzespółDataGridViewTextBoxColumn.DataPropertyName = "id_zespół";
            resources.ApplyResources(this.idzespółDataGridViewTextBoxColumn, "idzespółDataGridViewTextBoxColumn");
            this.idzespółDataGridViewTextBoxColumn.Name = "idzespółDataGridViewTextBoxColumn";
            this.idzespółDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // nazwaDataGridViewTextBoxColumn
            // 
            this.nazwaDataGridViewTextBoxColumn.DataPropertyName = "nazwa";
            resources.ApplyResources(this.nazwaDataGridViewTextBoxColumn, "nazwaDataGridViewTextBoxColumn");
            this.nazwaDataGridViewTextBoxColumn.Name = "nazwaDataGridViewTextBoxColumn";
            // 
            // bolidDataGridViewTextBoxColumn
            // 
            this.bolidDataGridViewTextBoxColumn.DataPropertyName = "bolid";
            resources.ApplyResources(this.bolidDataGridViewTextBoxColumn, "bolidDataGridViewTextBoxColumn");
            this.bolidDataGridViewTextBoxColumn.Name = "bolidDataGridViewTextBoxColumn";
            // 
            // silnikDataGridViewTextBoxColumn
            // 
            this.silnikDataGridViewTextBoxColumn.DataPropertyName = "silnik";
            resources.ApplyResources(this.silnikDataGridViewTextBoxColumn, "silnikDataGridViewTextBoxColumn");
            this.silnikDataGridViewTextBoxColumn.Name = "silnikDataGridViewTextBoxColumn";
            // 
            // imięszefaDataGridViewTextBoxColumn
            // 
            this.imięszefaDataGridViewTextBoxColumn.DataPropertyName = "imię_szefa";
            resources.ApplyResources(this.imięszefaDataGridViewTextBoxColumn, "imięszefaDataGridViewTextBoxColumn");
            this.imięszefaDataGridViewTextBoxColumn.Name = "imięszefaDataGridViewTextBoxColumn";
            // 
            // nazwiskoszefaDataGridViewTextBoxColumn
            // 
            this.nazwiskoszefaDataGridViewTextBoxColumn.DataPropertyName = "nazwisko_szefa";
            resources.ApplyResources(this.nazwiskoszefaDataGridViewTextBoxColumn, "nazwiskoszefaDataGridViewTextBoxColumn");
            this.nazwiskoszefaDataGridViewTextBoxColumn.Name = "nazwiskoszefaDataGridViewTextBoxColumn";
            // 
            // ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn
            // 
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn.DataPropertyName = "ilość_tytułów_mistrzoswskich";
            resources.ApplyResources(this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn, "ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn");
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn.Name = "ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn";
            // 
            // zdjęcieDataGridViewImageColumn
            // 
            this.zdjęcieDataGridViewImageColumn.DataPropertyName = "zdjęcie";
            resources.ApplyResources(this.zdjęcieDataGridViewImageColumn, "zdjęcieDataGridViewImageColumn");
            this.zdjęcieDataGridViewImageColumn.Name = "zdjęcieDataGridViewImageColumn";
            // 
            // zespółBindingSource
            // 
            this.zespółBindingSource.DataMember = "zespół";
            this.zespółBindingSource.DataSource = this.f_oneDataSet;
            // 
            // f_oneDataSet
            // 
            this.f_oneDataSet.DataSetName = "f_oneDataSet";
            this.f_oneDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // zespółTableAdapter
            // 
            this.zespółTableAdapter.ClearBeforeFill = true;
            // 
            // label6
            // 
            resources.ApplyResources(this.label6, "label6");
            this.label6.Name = "label6";
            // 
            // textBox5
            // 
            this.textBox5.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.zespółBindingSource, "nazwisko_szefa", true));
            resources.ApplyResources(this.textBox5, "textBox5");
            this.textBox5.Name = "textBox5";
            // 
            // label5
            // 
            resources.ApplyResources(this.label5, "label5");
            this.label5.Name = "label5";
            // 
            // label3
            // 
            resources.ApplyResources(this.label3, "label3");
            this.label3.Name = "label3";
            // 
            // label2
            // 
            resources.ApplyResources(this.label2, "label2");
            this.label2.Name = "label2";
            // 
            // label1
            // 
            resources.ApplyResources(this.label1, "label1");
            this.label1.Name = "label1";
            // 
            // textBox3
            // 
            this.textBox3.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.zespółBindingSource, "silnik", true));
            resources.ApplyResources(this.textBox3, "textBox3");
            this.textBox3.Name = "textBox3";
            // 
            // pictureBox1
            // 
            this.pictureBox1.DataBindings.Add(new System.Windows.Forms.Binding("Image", this.zespółBindingSource, "zdjęcie", true));
            resources.ApplyResources(this.pictureBox1, "pictureBox1");
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.TabStop = false;
            // 
            // textBox2
            // 
            this.textBox2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.zespółBindingSource, "bolid", true));
            resources.ApplyResources(this.textBox2, "textBox2");
            this.textBox2.Name = "textBox2";
            // 
            // textBox1
            // 
            this.textBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.zespółBindingSource, "nazwa", true));
            resources.ApplyResources(this.textBox1, "textBox1");
            this.textBox1.Name = "textBox1";
            // 
            // button3
            // 
            resources.ApplyResources(this.button3, "button3");
            this.button3.Name = "button3";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button2
            // 
            resources.ApplyResources(this.button2, "button2");
            this.button2.Name = "button2";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            resources.ApplyResources(this.button1, "button1");
            this.button1.Name = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Zespoly
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Zespoly";
            this.Load += new System.EventHandler(this.Zespoly_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.zespółBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private f_oneDataSet f_oneDataSet;
        private System.Windows.Forms.BindingSource zespółBindingSource;
        private f_oneDataSetTableAdapters.zespółTableAdapter zespółTableAdapter;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridViewTextBoxColumn idzespółDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nazwaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bolidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn silnikDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn imięszefaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nazwiskoszefaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewImageColumn zdjęcieDataGridViewImageColumn;
    }
}