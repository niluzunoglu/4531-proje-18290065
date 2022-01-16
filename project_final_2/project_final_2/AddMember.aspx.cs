using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_final_2
{
    public partial class AddMember : System.Web.UI.Page
    {

        public string constring = "Data Source=DESKTOP-3VB879G;Initial Catalog=library_final;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
            protected void uyeEkle_Click(object sender, EventArgs e)
            {
                // Üye ekle 
                SqlConnection con = new SqlConnection(constring);
                con.Open();

                if (con.State == System.Data.ConnectionState.Open)
                {
                    string q = "insert into Members values ('" + name.Text.ToString() + "','" + surname.Text.ToString() + "','" + email.Text.ToString() + "','" + phonenumber.Text.ToString() + "',0)";

                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();

                    addMemberLabel.Text = "Üye başarılı bir şekilde eklendi!";

                }

            name.Text = "";
            surname.Text = "";
            email.Text = "";
            phonenumber.Text = "";
            addMemberLabel.Text = "";


            con.Close();
            }
        
    }
}