using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_final_2
{
    public partial class AddBook : System.Web.UI.Page
    {
        public string constring = "Data Source=DESKTOP-3VB879G;Initial Catalog=library_final;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kitapEkle_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "insert into Books values ('" + bookName.Text.ToString() + "','" + bookWriter.Text.ToString() + "',1)";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                addBookLabel.Text = bookName.Text.ToString() + " kitabı başarılı bir şekilde eklendi!";
            }

            bookName.Text = " ";
            bookWriter.Text = " ";

            con.Close();
        }
    }
}