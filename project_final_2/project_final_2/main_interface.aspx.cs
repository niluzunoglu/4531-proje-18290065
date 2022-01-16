using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_final_2
{
    public partial class main_interface : System.Web.UI.Page
    {

        public string constring = "Data Source=DESKTOP-3VB879G;Initial Catalog=library_final;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMember.aspx");
        }


        protected void viewMembers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMembers.aspx");

        }

        protected void viewBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");

        }

        protected void addBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBook.aspx");

        }

        protected void lendBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("LendBook.aspx");

        }

        protected void takeBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("TakeBook.aspx");

        }
    }
}