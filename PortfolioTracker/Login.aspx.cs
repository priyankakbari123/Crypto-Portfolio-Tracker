using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioTracker
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            PortfolioTrackerEntities db = new PortfolioTrackerEntities();
            UserDetail user = default;
            user = db.UserDetails.Where(s => s.email == lemail.Text && s.password == lpassword.Text).FirstOrDefault<UserDetail>();
            if (user!=default)
            {
                Session["UserID"] =user.Id;
                Session["UserName"] = user.name;
                Response.Redirect("Home.aspx");
            }
            else
            {
                UsernamePasswordError.Text = "Invalid Credentials !";
                //Response.Redirect("Registration.aspx");
            }
        }
    }
}