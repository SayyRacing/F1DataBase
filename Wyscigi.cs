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
    public partial class Wyscigi : Form
    {
        public Wyscigi()
        {
            InitializeComponent();
        }

        private void Wyscigi_Load(object sender, EventArgs e)
        {
            // TODO: Ten wiersz kodu wczytuje dane do tabeli 'f_oneDataSet.wyścigi' . Możesz go przenieść lub usunąć.
            this.wyścigiTableAdapter.Fill(this.f_oneDataSet.wyścigi);

        }

        private void button3_Click(object sender, EventArgs e)
        {
            //aktualizuje bazę o wpisy w
            wyścigiTableAdapter.Update(f_oneDataSet.wyścigi);

            MessageBox.Show("Zapisano plik", "Zapis");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var confirmResult = MessageBox.Show("Czy na pewno chcesz usunąć rekord?",
                                    "Ostrzeżenie",
                                    MessageBoxButtons.YesNo);
            if (confirmResult == DialogResult.Yes)
            {
                if (dataGridView1.CurrentRow != null)
                {
                    dataGridView1.CurrentRow.Selected = true;
                    //usuwa zaznaczony wiersz
                    dataGridView1.Rows.Remove(dataGridView1.SelectedRows[0]);
                }
            }
        }
    }
}
