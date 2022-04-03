
namespace DataBaseProgram
{
    partial class Start
    {
        /// <summary>
        /// Wymagana zmienna projektanta.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Wyczyść wszystkie używane zasoby.
        /// </summary>
        /// <param name="disposing">prawda, jeżeli zarządzane zasoby powinny zostać zlikwidowane; Fałsz w przeciwnym wypadku.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kod generowany przez Projektanta formularzy systemu Windows

        /// <summary>
        /// Metoda wymagana do obsługi projektanta — nie należy modyfikować
        /// jej zawartości w edytorze kodu.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Start));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.kierowcyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.zespołyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.wyścigiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.kierowcyToolStripMenuItem,
            this.zespołyToolStripMenuItem,
            this.wyścigiToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1767, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // kierowcyToolStripMenuItem
            // 
            this.kierowcyToolStripMenuItem.Name = "kierowcyToolStripMenuItem";
            this.kierowcyToolStripMenuItem.Size = new System.Drawing.Size(67, 20);
            this.kierowcyToolStripMenuItem.Text = "Kierowcy";
            this.kierowcyToolStripMenuItem.Click += new System.EventHandler(this.kierowcyToolStripMenuItem_Click);
            // 
            // zespołyToolStripMenuItem
            // 
            this.zespołyToolStripMenuItem.Name = "zespołyToolStripMenuItem";
            this.zespołyToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.zespołyToolStripMenuItem.Text = "Zespoły";
            this.zespołyToolStripMenuItem.Click += new System.EventHandler(this.zespołyToolStripMenuItem_Click);
            // 
            // wyścigiToolStripMenuItem
            // 
            this.wyścigiToolStripMenuItem.Name = "wyścigiToolStripMenuItem";
            this.wyścigiToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.wyścigiToolStripMenuItem.Text = "Wyścigi";
            this.wyścigiToolStripMenuItem.Click += new System.EventHandler(this.wyścigiToolStripMenuItem_Click);
            // 
            // Start
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1767, 917);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Start";
            this.Text = "Formula1";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem kierowcyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem zespołyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem wyścigiToolStripMenuItem;
    }
}

