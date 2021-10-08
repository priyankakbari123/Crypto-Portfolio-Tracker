using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioTracker
{
    public partial class Display : System.Web.UI.Page
    {
        public string coin;
        public void DisplayDataAsync()
        {
            //print data in table
            PortfolioTrackerEntities db = new PortfolioTrackerEntities();
            int UId = (int)Session["UserID"];
            var queryAll = from coinE in db.PortfolioDetails
                           where coinE.UesrId == UId
                           select coinE;
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("Coin", typeof(string)));
            dt.Columns.Add(new DataColumn("BuyingPrice($)", typeof(float)));
            dt.Columns.Add(new DataColumn("CurrentPrice($)", typeof(float)));
            dt.Columns.Add(new DataColumn("Quantity", typeof(float)));
            dt.Columns.Add(new DataColumn("TotalInvested($)", typeof(float)));
            dt.Columns.Add(new DataColumn("Profit/Loss(%)", typeof(string)));

            foreach (PortfolioDetail coinE in queryAll)
            {
                DataRow dr = null;
                dr = dt.NewRow();
                //calculating current price of each coin
                coin = coinE.Coin.ToString();
                float Currentprice = (float)Application[coin];

                dr["Coin"] = coinE.Coin;
                dr["BuyingPrice($)"] = coinE.BuyPrice;
                dr["CurrentPrice($)"] = Currentprice;
                dr["Quantity"] = coinE.Quantity;
                dr["TotalInvested($)"] = coinE.TotalInvested;


                
                dr["Profit/Loss(%)"] = System.Math.Round((float)(((Currentprice - coinE.BuyPrice) * 100) / coinE.BuyPrice),2 )+"%";
                dt.Rows.Add(dr);
            }
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
                DisplayDataAsync();
            else
                Response.Redirect("Login.aspx");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}