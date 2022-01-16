using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_final_2
{

    public partial class TakeBook : System.Web.UI.Page
    {
        public string connectionString = "Data Source=DESKTOP-3VB879G;Initial Catalog=library_final;Integrated Security=True";
        public static string ToSqlDate(DateTime tarih)
        {
            string s1 = tarih.ToString("yyyy") + "-" + tarih.ToString("MM") + "-" + tarih.ToString("dd") + " " + tarih.ToString("hh") + ":" + tarih.ToString("mm") + ":" + tarih.ToString("ss");
            return s1;
        }

        public int id_1 = 0;
        public int id_2 = 0;
        public int id_of_book = 0;
        public DateTime datet;
        public string date;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)

            {
                LoadBooks();
                LoadNames();
                LoadSurnames();

            }
        }

        protected void memberName_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_1 = Convert.ToInt32(memberName.SelectedValue);

        }

        protected void memberSurname_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_2 = Convert.ToInt32(memberSurname.SelectedValue);

        }

        protected void book_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_of_book = Convert.ToInt32(book.SelectedValue);

        }

        protected void takeBookBack_Click(object sender, EventArgs e)
        {

            if (id_1 == id_2)
            {
                // Transactions tablosuna veri gitmeli.
                // Sonrasında diğer tablolardaki veriler de güncellenmeli.

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                if (con.State == System.Data.ConnectionState.Open)
                {
                    datet = DateTime.Now;
                    date = ToSqlDate(datet);

                    string q = "update Transactions set date_of_end = '" + date + "' where memberid = " + id_1 + " and bookid = " + id_of_book;

                    SqlCommand cmd = new SqlCommand(q, con);

                    string q1 = "update Books set in_library=1 where bookid =" + id_of_book;
                    SqlCommand cmd_book = new SqlCommand(q1, con);

                    string q2 = "update Members set have_book=0 where memberid=" + id_1;
                    SqlCommand cmd_member = new SqlCommand(q2, con);

                    cmd.ExecuteNonQuery();
                    cmd_book.ExecuteNonQuery();
                    cmd_member.ExecuteNonQuery();

                }

                Response.Redirect("TakeBook.aspx");
            }


            else
            {
                Response.Redirect("TakeBook.aspx");

            }

        }

        private void LoadBooks()

        { 
            DataSet dsBooks = null;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From Books where in_library = 0", con);
                dsBooks = new DataSet();
                adapter.Fill(dsBooks, "Books");
            }


            book.DataSource = dsBooks;
            book.DataValueField = "bookid";
            book.DataTextField = "bookname";
            book.DataBind();

        }

        private void LoadNames()

        {

            DataSet dsNames = null;

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select memberid,firstname,lastname From members where have_book = 1", con);
                dsNames = new DataSet();
                adapter.Fill(dsNames, "Members");
            }


            memberName.DataSource = dsNames;
            memberName.DataValueField = "memberid";
            memberName.DataTextField = "firstname";
            memberName.DataBind();

        }

        private void LoadSurnames()

        {

            DataSet dsNames = null;

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From Members where have_book = 1", con);
                dsNames = new DataSet();
                adapter.Fill(dsNames, "Members");
            }


            memberSurname.DataSource = dsNames;
            memberSurname.DataValueField = "memberid";
            memberSurname.DataTextField = "lastname";
            memberSurname.DataBind();

        }

    
    }
}