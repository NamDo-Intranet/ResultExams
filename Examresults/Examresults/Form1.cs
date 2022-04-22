using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Examresults
{
    public partial class Form1 : Form
    {
        SqlConnection conn;
        string st = "Data Source=DESKTOP-15F0QSH\\SQLEXPRESS;Initial Catalog=Results;Integrated Security=True";
        SqlDataAdapter da;
        DataSet ds;
        public Form1()
        {
            InitializeComponent();
        }
        #region
        public void loadExam()
        {
            string sql = "select * from Student, Result where Result.StudentCode = Student.StudentCode";
            da = new SqlDataAdapter(sql, conn);
            da.Fill(ds, "Exam");
            cbbsearch.DataSource = ds.Tables["Exam"];
            cbbsearch.DisplayMember = "Name";
            cbbsearch.ValueMember = "StudentCode";
        }
        public void loadData()
        {
            string sql = "select *  from Student ,Result where Result.StudentCode = Student.StudentCode";
            da = new SqlDataAdapter(sql, conn);
            da.Fill(ds, "NameExam");
            dtgvnoidung.DataSource = ds.Tables["NameExam"];
        }
        #endregion

        private void Form1_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(st);
            ds = new DataSet();
            loadExam();
            loadData();
        }

        private void bttimkiem_Click(object sender, EventArgs e)
        {
            string sql = string.Format("select * from Student, Result, Exams where Exams.ExamCode = Result.ExamCode and Student.StudentCode = Result.StudentCode and Student.StudentCode =" + Convert.ToInt16(cbbsearch.Text));
            da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dtgvnoidung.DataSource = dt;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
