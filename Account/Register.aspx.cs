using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;

namespace Systemy_webowe.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
       /*     using (var cmd = new SqlConnection())
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Username.Text);
                    cmd.Parameters.AddWithValue("@Name", Name.Text);
                    cmd.Parameters.AddWithValue("@Lastname", LastName.Text);
                    cmd.Parameters.AddWithValue("@Password", Password.Text);
                    cmd.Parameters.AddWithValue("@Email", Email.Text);
                    var con = cmd.Connection;
                    con.Open();
                    int userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
     */    
    }
        
    }
}