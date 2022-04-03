
namespace DataBaseProgram
{
    partial class Kierowcy
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Kierowcy));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.idkierowcaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.imieDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nazwiskoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.krajDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nazwazespółuDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.zespółBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.f_oneDataSet = new DataBaseProgram.f_oneDataSet();
            this.numerstartowyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataurodzeniaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ilośćstartówDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ilośćpolepositionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ilośćzwycięstwDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ulubionywyścigDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.wyścigiBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.zdjęcieDataGridViewImageColumn = new System.Windows.Forms.DataGridViewImageColumn();
            this.kierowcaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.kierowcaTableAdapter = new DataBaseProgram.f_oneDataSetTableAdapters.kierowcaTableAdapter();
            this.zespółTableAdapter = new DataBaseProgram.f_oneDataSetTableAdapters.zespółTableAdapter();
            this.wyścigiTableAdapter = new DataBaseProgram.f_oneDataSetTableAdapters.wyścigiTableAdapter();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.fKkierowcaulubio3587F3E0BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.f_oneDataSet1 = new DataBaseProgram.f_oneDataSet();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.zespółBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.wyścigiBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.kierowcaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fKkierowcaulubio3587F3E0BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idkierowcaDataGridViewTextBoxColumn,
            this.imieDataGridViewTextBoxColumn,
            this.nazwiskoDataGridViewTextBoxColumn,
            this.krajDataGridViewTextBoxColumn,
            this.nazwazespółuDataGridViewTextBoxColumn,
            this.numerstartowyDataGridViewTextBoxColumn,
            this.dataurodzeniaDataGridViewTextBoxColumn,
            this.ilośćstartówDataGridViewTextBoxColumn,
            this.ilośćpolepositionDataGridViewTextBoxColumn,
            this.ilośćzwycięstwDataGridViewTextBoxColumn,
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn,
            this.ulubionywyścigDataGridViewTextBoxColumn,
            this.zdjęcieDataGridViewImageColumn});
            this.dataGridView1.DataSource = this.kierowcaBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 12);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(1141, 766);
            this.dataGridView1.TabIndex = 0;
            // 
            // idkierowcaDataGridViewTextBoxColumn
            // 
            this.idkierowcaDataGridViewTextBoxColumn.DataPropertyName = "id_kierowca";
            this.idkierowcaDataGridViewTextBoxColumn.HeaderText = "id_kierowca";
            this.idkierowcaDataGridViewTextBoxColumn.Name = "idkierowcaDataGridViewTextBoxColumn";
            this.idkierowcaDataGridViewTextBoxColumn.ReadOnly = true;
            this.idkierowcaDataGridViewTextBoxColumn.Visible = false;
            // 
            // imieDataGridViewTextBoxColumn
            // 
            this.imieDataGridViewTextBoxColumn.DataPropertyName = "imie";
            this.imieDataGridViewTextBoxColumn.HeaderText = "imie";
            this.imieDataGridViewTextBoxColumn.Name = "imieDataGridViewTextBoxColumn";
            // 
            // nazwiskoDataGridViewTextBoxColumn
            // 
            this.nazwiskoDataGridViewTextBoxColumn.DataPropertyName = "nazwisko";
            this.nazwiskoDataGridViewTextBoxColumn.HeaderText = "nazwisko";
            this.nazwiskoDataGridViewTextBoxColumn.Name = "nazwiskoDataGridViewTextBoxColumn";
            // 
            // krajDataGridViewTextBoxColumn
            // 
            this.krajDataGridViewTextBoxColumn.DataPropertyName = "kraj";
            this.krajDataGridViewTextBoxColumn.HeaderText = "kraj";
            this.krajDataGridViewTextBoxColumn.Name = "krajDataGridViewTextBoxColumn";
            // 
            // nazwazespółuDataGridViewTextBoxColumn
            // 
            this.nazwazespółuDataGridViewTextBoxColumn.DataPropertyName = "nazwa_zespółu";
            this.nazwazespółuDataGridViewTextBoxColumn.DataSource = this.zespółBindingSource;
            this.nazwazespółuDataGridViewTextBoxColumn.DisplayMember = "nazwa";
            this.nazwazespółuDataGridViewTextBoxColumn.HeaderText = "nazwa_zespółu";
            this.nazwazespółuDataGridViewTextBoxColumn.Name = "nazwazespółuDataGridViewTextBoxColumn";
            this.nazwazespółuDataGridViewTextBoxColumn.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.nazwazespółuDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.nazwazespółuDataGridViewTextBoxColumn.ValueMember = "id_zespół";
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
            // numerstartowyDataGridViewTextBoxColumn
            // 
            this.numerstartowyDataGridViewTextBoxColumn.DataPropertyName = "numer_startowy";
            this.numerstartowyDataGridViewTextBoxColumn.HeaderText = "numer_startowy";
            this.numerstartowyDataGridViewTextBoxColumn.Name = "numerstartowyDataGridViewTextBoxColumn";
            // 
            // dataurodzeniaDataGridViewTextBoxColumn
            // 
            this.dataurodzeniaDataGridViewTextBoxColumn.DataPropertyName = "data_urodzenia";
            this.dataurodzeniaDataGridViewTextBoxColumn.HeaderText = "data_urodzenia";
            this.dataurodzeniaDataGridViewTextBoxColumn.Name = "dataurodzeniaDataGridViewTextBoxColumn";
            // 
            // ilośćstartówDataGridViewTextBoxColumn
            // 
            this.ilośćstartówDataGridViewTextBoxColumn.DataPropertyName = "ilość_startów";
            this.ilośćstartówDataGridViewTextBoxColumn.HeaderText = "ilość_startów";
            this.ilośćstartówDataGridViewTextBoxColumn.Name = "ilośćstartówDataGridViewTextBoxColumn";
            // 
            // ilośćpolepositionDataGridViewTextBoxColumn
            // 
            this.ilośćpolepositionDataGridViewTextBoxColumn.DataPropertyName = "ilość_pole_position";
            this.ilośćpolepositionDataGridViewTextBoxColumn.HeaderText = "ilość_pole_position";
            this.ilośćpolepositionDataGridViewTextBoxColumn.Name = "ilośćpolepositionDataGridViewTextBoxColumn";
            // 
            // ilośćzwycięstwDataGridViewTextBoxColumn
            // 
            this.ilośćzwycięstwDataGridViewTextBoxColumn.DataPropertyName = "ilość_zwycięstw";
            this.ilośćzwycięstwDataGridViewTextBoxColumn.HeaderText = "ilość_zwycięstw";
            this.ilośćzwycięstwDataGridViewTextBoxColumn.Name = "ilośćzwycięstwDataGridViewTextBoxColumn";
            // 
            // ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn
            // 
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn.DataPropertyName = "ilość_tytułów_mistrzoswskich";
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn.HeaderText = "ilość_tytułów_mistrzoswskich";
            this.ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn.Name = "ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn";
            // 
            // ulubionywyścigDataGridViewTextBoxColumn
            // 
            this.ulubionywyścigDataGridViewTextBoxColumn.DataPropertyName = "ulubiony_wyścig";
            this.ulubionywyścigDataGridViewTextBoxColumn.DataSource = this.wyścigiBindingSource;
            this.ulubionywyścigDataGridViewTextBoxColumn.DisplayMember = "nazwa_wyścigu";
            this.ulubionywyścigDataGridViewTextBoxColumn.HeaderText = "ulubiony_wyścig";
            this.ulubionywyścigDataGridViewTextBoxColumn.Name = "ulubionywyścigDataGridViewTextBoxColumn";
            this.ulubionywyścigDataGridViewTextBoxColumn.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.ulubionywyścigDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.ulubionywyścigDataGridViewTextBoxColumn.ValueMember = "id_wyścigu";
            // 
            // wyścigiBindingSource
            // 
            this.wyścigiBindingSource.DataMember = "wyścigi";
            this.wyścigiBindingSource.DataSource = this.f_oneDataSet;
            // 
            // zdjęcieDataGridViewImageColumn
            // 
            this.zdjęcieDataGridViewImageColumn.DataPropertyName = "zdjęcie";
            this.zdjęcieDataGridViewImageColumn.HeaderText = "zdjęcie";
            this.zdjęcieDataGridViewImageColumn.Name = "zdjęcieDataGridViewImageColumn";
            this.zdjęcieDataGridViewImageColumn.Visible = false;
            // 
            // kierowcaBindingSource
            // 
            this.kierowcaBindingSource.DataMember = "kierowca";
            this.kierowcaBindingSource.DataSource = this.f_oneDataSet;
            // 
            // kierowcaTableAdapter
            // 
            this.kierowcaTableAdapter.ClearBeforeFill = true;
            // 
            // zespółTableAdapter
            // 
            this.zespółTableAdapter.ClearBeforeFill = true;
            // 
            // wyścigiTableAdapter
            // 
            this.wyścigiTableAdapter.ClearBeforeFill = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(1350, 164);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(127, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "Aktualizuj Zdjęcie";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(1305, 713);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(128, 65);
            this.button2.TabIndex = 2;
            this.button2.Text = "Usuń Rekord";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(1467, 713);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(116, 64);
            this.button3.TabIndex = 3;
            this.button3.Text = "Zapisz Tabelę";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // textBox1
            // 
            this.textBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.kierowcaBindingSource, "imie", true));
            this.textBox1.Location = new System.Drawing.Point(1305, 82);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 4;
            // 
            // textBox2
            // 
            this.textBox2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.kierowcaBindingSource, "nazwisko", true));
            this.textBox2.Location = new System.Drawing.Point(1305, 130);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 5;
            // 
            // pictureBox1
            // 
            this.pictureBox1.DataBindings.Add(new System.Windows.Forms.Binding("Image", this.kierowcaBindingSource, "zdjęcie", true));
            this.pictureBox1.Location = new System.Drawing.Point(1305, 190);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(299, 296);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            // 
            // fKkierowcaulubio3587F3E0BindingSource
            // 
            this.fKkierowcaulubio3587F3E0BindingSource.DataMember = "FK__kierowca__ulubio__3587F3E0";
            this.fKkierowcaulubio3587F3E0BindingSource.DataSource = this.wyścigiBindingSource;
            // 
            // f_oneDataSet1
            // 
            this.f_oneDataSet1.DataSetName = "f_oneDataSet";
            this.f_oneDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // textBox3
            // 
            this.textBox3.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.kierowcaBindingSource, "kraj", true));
            this.textBox3.Location = new System.Drawing.Point(1442, 82);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 20);
            this.textBox3.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1302, 66);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Imię ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(1302, 114);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Nazwisko";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(1439, 66);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 13);
            this.label3.TabIndex = 13;
            this.label3.Text = "Narodowość";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(1302, 174);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 15;
            this.label5.Text = "Zdjęcie";
            // 
            // textBox5
            // 
            this.textBox5.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.kierowcaBindingSource, "numer_startowy", true));
            this.textBox5.Location = new System.Drawing.Point(1442, 130);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(100, 20);
            this.textBox5.TabIndex = 16;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(1439, 114);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 13);
            this.label6.TabIndex = 17;
            this.label6.Text = "Numer";
            // 
            // Kierowcy
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1703, 842);
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
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Kierowcy";
            this.Text = "Kierowcy";
            this.Load += new System.EventHandler(this.Kierowcy_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.zespółBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.wyścigiBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.kierowcaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fKkierowcaulubio3587F3E0BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.f_oneDataSet1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private f_oneDataSet f_oneDataSet;
        private System.Windows.Forms.BindingSource kierowcaBindingSource;
        private f_oneDataSetTableAdapters.kierowcaTableAdapter kierowcaTableAdapter;
        private System.Windows.Forms.BindingSource zespółBindingSource;
        private f_oneDataSetTableAdapters.zespółTableAdapter zespółTableAdapter;
        private System.Windows.Forms.BindingSource wyścigiBindingSource;
        private f_oneDataSetTableAdapters.wyścigiTableAdapter wyścigiTableAdapter;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.BindingSource fKkierowcaulubio3587F3E0BindingSource;
        private f_oneDataSet f_oneDataSet1;
        private System.Windows.Forms.DataGridViewTextBoxColumn idkierowcaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn imieDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nazwiskoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn krajDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewComboBoxColumn nazwazespółuDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn numerstartowyDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataurodzeniaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ilośćstartówDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ilośćpolepositionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ilośćzwycięstwDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ilośćtytułówmistrzoswskichDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewComboBoxColumn ulubionywyścigDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewImageColumn zdjęcieDataGridViewImageColumn;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label6;
    }
}