using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Binance.Net;
using Binance.Net.Objects;

namespace PortfolioTracker
{
    public partial class Home : System.Web.UI.Page
    {
        public string coin;
        public float currPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userName"]!=null)
                userNameLabel.Text = (String)Session["userName"];
            else
                Response.Redirect("Login.aspx");
        }


        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            coin = (String)CoinDropDown.SelectedItem.Text;
            if(coin!="Select Coin")
                RegisterAsyncTask(new PageAsyncTask(GetCoinPrice));

        }

        private async Task GetCoinPrice()
        {
            var client = new BinanceClient(new BinanceClientOptions() { });

            var callResult = await client.Spot.Market.GetPriceAsync(coin);
            CurrentPrice.Text = callResult.Data.Price.ToString();
            currPrice = float.Parse(callResult.Data.Price.ToString());
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            coin= CoinDropDown.SelectedItem.Text;
            PortfolioTrackerEntities db = new PortfolioTrackerEntities();
            PortfolioDetail c = new PortfolioDetail();
            c.Coin = CoinDropDown.SelectedItem.Text;
            c.Quantity = float.Parse(quantityIb.Text);
            c.BuyPrice = float.Parse(buypriceIb.Text);
            c.UesrId = (int)Session["UserID"];
            RegisterAsyncTask(new PageAsyncTask(GetCoinPrice));
            c.TotalInvested= float.Parse(buypriceIb.Text) * float.Parse(quantityIb.Text);
            db.PortfolioDetails.Add(c);
            db.SaveChanges();
        }
    }
}