using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManager.user
{
    public partial class task_completed : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Programing\DQSSIII\TaskManager\TaskManager\App_Data\lms.mdf;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["users"] == null)
            {
                Response.Redirect("login.aspx");
            }

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update tasks set completed='Yes' where id=" + id + "";
            cmd.ExecuteNonQuery();

            Response.Redirect("my_tasks.aspx");
        }
    }
}