using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace _14_12
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Image");
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //SqlConnection con = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Database1;Integrated Security=True;");
            //con.Open();
            //string SQL = "insert into Em(Name,Email,Age,Password,ImageName) VALUES (@name,@email,@age,@password,@imageName)";
            //SqlCommand command = new SqlCommand(SQL, con);
            //command.Parameters.AddWithValue("@name", TextBox1.Text);
            //command.Parameters.AddWithValue("@email", TextBox2.Text);
            //command.Parameters.AddWithValue("@age", TextBox3.Text);
            //command.Parameters.AddWithValue("@password", TextBox4.Text);
            //command.Parameters.AddWithValue("@imageName", FileUpload1.FileName);
            //con.Close();
            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Database1;Integrated Security=True;"))
            {
                SqlCommand command = new SqlCommand($"INSERT INTO Em (Name,Email,Age,Password,Image) VALUES ('{TextBox1.Text}','{TextBox2.Text}','{TextBox3.Text}','{TextBox4.Text}','{FileUpload1.FileName}')", connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }

            retriveData();

        }

        private void retriveData()
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Database1;Integrated Security=True;");
            SqlCommand command = new SqlCommand("select * from Em", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            string table = "<table class='table table-striped'><tr><th>Name</th><th>Email</th><th>Age</th><th>Password</th><th>Image Name</th></tr>";
            while (reader.Read())
            {
              table += $"<tr><th>{reader[0]}</th><th>{reader[1]}</th><th>{reader[2]}</th><th>{reader[3]}</th><th>{reader[4]}</th></tr>";
            }
            table += "</tabel>";
            Label1.Style.Add("Display", "block");
            Label1.Text= table;
            connection.Close();
            
            
        }
    }
}