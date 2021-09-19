using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioTracker
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                PortfolioTrackerEntities db = new PortfolioTrackerEntities();
                UserDetail user = new UserDetail();
                user.name = username.Text;
                user.email = email.Text;
                user.password = password.Text;
                db.UserDetails.Add(user);
                db.SaveChanges();
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void passwordvalidation_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string pass = args.Value;
            if (pass.Length < 8 || pass.Length > 16)
            {
                return;
            }
            bool Upper = false, Lower = false, num = false;
            foreach (char ch in pass)
            {
                if (ch >= 'A' && ch <= 'Z')
                {
                    Upper = true;

                }
                if (ch >= 'a' && ch <= 'z')
                {
                    Lower = true;

                }
                if (ch >= '0' && ch <= '9')
                {
                    num = true;

                }
            }
            if (!Upper)
                return;
            if (!Lower)
                return;
            if (!num)
                return;
            args.IsValid = true;
        }
    }
}