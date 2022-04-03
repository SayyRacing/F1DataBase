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
    public partial class Kierowcy : Form
    {
        public Kierowcy()
        {
            InitializeComponent();
        }

        private void Kierowcy_Load(object sender, EventArgs e)
        {
            // TODO: Ten wiersz kodu wczytuje dane do tabeli 'f_oneDataSet.wyścigi' . Możesz go przenieść lub usunąć.
            this.wyścigiTableAdapter.Fill(this.f_oneDataSet.wyścigi);
            // TODO: Ten wiersz kodu wczytuje dane do tabeli 'f_oneDataSet.zespół' . Możesz go przenieść lub usunąć.
            this.zespółTableAdapter.Fill(this.f_oneDataSet.zespół);
            // TODO: Ten wiersz kodu wczytuje dane do tabeli 'f_oneDataSet.kierowca' . Możesz go przenieść lub usunąć.
            this.kierowcaTableAdapter.Fill(this.f_oneDataSet.kierowca);

        }

        private void button2_Click(object sender, EventArgs e)
        {
            //Prośba o potwierdzenie usunięcia rekordu
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

        private void button3_Click(object sender, EventArgs e)
        {
            {
                //aktualizuje bazę o wpisy w
                kierowcaTableAdapter.Update(f_oneDataSet.kierowca);

                //Wyświetla wiadomość o zapisaniu pliku
                MessageBox.Show("Zapisano plik","Zapis");
            }
        }

        private void Kierowcy_FormClosing(object sender, FormClosingEventArgs e)
        {
            // Nie działa
            if (e.CloseReason == CloseReason.UserClosing)
                e.Cancel = MessageBox.Show(@"Do you really want to close the form?",
                                           Application.ProductName,
                                           MessageBoxButtons.YesNo) == DialogResult.No;
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
            DataRow dr = f_oneDataSet.kierowca.Select("id_kierowca=" + id).FirstOrDefault();
            if (sciezkaObrazka != null) dr["zdjęcie"] = ImageToByte(sciezkaObrazka);
        }
    }
}
