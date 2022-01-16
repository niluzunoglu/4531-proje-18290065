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
    public partial class LendBook : System.Web.UI.Page
    {

        string connectionString = @"Data Source=DESKTOP-3VB879G;Initial Catalog=library_final;Integrated Security=True";

        public static string ToSqlDate(DateTime tarih)
        {
            string s1 = tarih.ToString("yyyy") + "-" + tarih.ToString("MM") + "-" + tarih.ToString("dd") + " " + tarih.ToString("hh") + ":" + tarih.ToString("mm") + ":" + tarih.ToString("ss") ;
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

        protected void name_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_1 = Convert.ToInt32(name.SelectedValue) ;
        }

        protected void surname_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_2 = Convert.ToInt32(surname.SelectedValue);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_of_book = Convert.ToInt32(DropDownList1.SelectedValue);
        }

        protected void lend_Click(object sender, EventArgs e)
        {
            if (id_1 == id_2)
            {

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                if (con.State == System.Data.ConnectionState.Open)
                {
                    datet = DateTime.Now;
                    date = ToSqlDate(datet);

                    string q = "insert into Transactions (date_of_start,memberid,bookid) values ( '"+date+"',"+ id_1 + "," + id_of_book+")";

                    SqlCommand cmd = new SqlCommand(q, con);

                    string q1 = "update Books set in_library=0 where bookid ="+id_of_book;
                    SqlCommand cmd_book = new SqlCommand(q1, con);

                    string q2 = "update Members set have_book=1 where memberid="+id_1;
                    SqlCommand cmd_member = new SqlCommand(q2, con);

                    cmd.ExecuteNonQuery();
                    cmd_book.ExecuteNonQuery();
                    cmd_member.ExecuteNonQuery();


                }

                Response.Redirect("LendBook.aspx");
            }


            else
            {
                Response.Redirect("LendBook.aspx");

            }
        }

        private void LoadBooks()

        {

            DataSet dsBooks = null;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From Books where in_library = 1", con);
                dsBooks = new DataSet();
                adapter.Fill(dsBooks, "Books");
            }


            DropDownList1.DataSource = dsBooks;
            DropDownList1.DataValueField = "bookid";
            DropDownList1.DataTextField = "bookname";
            DropDownList1.DataBind();

        }

        private void LoadNames()

        {

            DataSet dsNames = null;

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select memberid,firstname,lastname From members where have_book = 0", con);
                dsNames = new DataSet();
                adapter.Fill(dsNames, "Members");
            }


            name.DataSource = dsNames;
            name.DataValueField = "memberid";
            name.DataTextField = "firstname";
            name.DataBind();

        }

        private void LoadSurnames()

        {

            DataSet dsNames = null;

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * From Members where have_book = 0", con);
                dsNames = new DataSet();
                adapter.Fill(dsNames, "Members");
            }


            surname.DataSource = dsNames;
            surname.DataValueField = "memberid";
            surname.DataTextField = "lastname";
            surname.DataBind();

        }

  
    }
}