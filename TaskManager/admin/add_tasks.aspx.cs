using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace TaskManager.admin
{
    public partial class add_tasks : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Programing\DQSSIII\TaskManager\TaskManager\App_Data\lms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }


            userna.Items.Clear();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select username from users";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                userna.Items.Add(dr["username"].ToString());
            }

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string taskscreated = DateTime.Now.ToString("yyyy/MM/dd"); 
            string tasksduedate = duedate.Text.ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into tasks values('" + tasksname.Text + "','" + tasksdesc.Text + "','" + taskscreated + "','" + userna.SelectedItem.ToString() + "','" + tasksduedate + "','No')"; 
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");
        }
    }
}