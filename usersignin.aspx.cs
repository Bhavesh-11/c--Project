using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery_management
{
    public partial class usersignin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsign_Click(object sender, EventArgs e)
        {

            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signupmember();
            }
        }
        bool checkMemberExists()
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from customer where user_id='" + userid.Text.Trim() + "';", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);


                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signupmember()
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection conn = new SqlConnection(strcon);

                // if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO customer(full_name,dob,contact_no,email,address,user_id,password) values(@full_name,@dob,@contact_no,@email,@address,@user_id,@password)", conn);

                cmd.Parameters.AddWithValue("full_name", name.Text.Trim());
                cmd.Parameters.AddWithValue("dob", dob.Text.Trim());
                cmd.Parameters.AddWithValue("contact_no", contact.Text.Trim());
                cmd.Parameters.AddWithValue("email", email.Text.Trim());
                cmd.Parameters.AddWithValue("address",address.Text.Trim());
                cmd.Parameters.AddWithValue("user_id", userid.Text.Trim());
                cmd.Parameters.AddWithValue("password", password.Text.Trim());

                int res = cmd.ExecuteNonQuery();


                conn.Close();

                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                Response.Redirect("home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}