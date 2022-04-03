using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace DataBaseProgram
{
    public partial class Zespoly : Form
    {
        public Zespoly()
        {
            InitializeComponent();
        }

        private void Zespoly_Load(object sender, EventArgs e)
        {
            // TODO: Ten wiersz kodu wczytuje dane do tabeli 'f_oneDataSet.zespół' . Możesz go przenieść lub usunąć.
            this.zespółTableAdapter.Fill(this.f_oneDataSet.zespół);

        }

        public static byte[] ImageToByte(string filePath)
        {
            var stream = new FileStream(filePath, FileMode.Open,
            FileAccess.Read);
            var reader = new BinaryReader(stream);
            var photo = reader.ReadBytes((int)stream.Length);
            reader.Close();
            stream.Close();
            return photo;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var ofd = new OpenFileDialog
            {
                Filter = "Image Files(*.bmp;*.jpg;*.gif)|.bmp; *.jpg; *.gif"
            };

            var sciezkaObrazka = "";
            if (ofd.ShowDialog() == DialogResult.OK) sciezkaObrazka = ofd.FileName;

            var id = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            DataRow dr = f_oneDataSet.zespół.Select("id_zespół=" + id).FirstOrDefault();
            if (sciezkaObrazka != null) dr["zdjęcie"] = ImageToByte(sciezkaObrazka);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //aktualizuje bazę o wpisy w
            zespółTableAdapter.Update(f_oneDataSet.zespół);

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
