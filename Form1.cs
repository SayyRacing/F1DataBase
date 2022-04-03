using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataBaseProgram
{
    public partial class Start : Form
    {
        public Start()
        {
            InitializeComponent();
        }

        private void kierowcyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //tworzymy obiekt kierowcy 
            Kierowcy kierowcy = new Kierowcy();
            //ustawiamy jego rodzica
            kierowcy.MdiParent = this;
            //Wyświetlamy formularz
            kierowcy.Show();
        }

        private void zespołyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //identycznie jak powyżej
            Zespoly zespoly = new Zespoly();
            zespoly.MdiParent = this;
            zespoly.Show();
        }

        private void wyścigiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //identycznie jak powyżej
            Wyscigi wyscigi = new Wyscigi();
            wyscigi.MdiParent = this;
            wyscigi.Show();
        }
    }
}
