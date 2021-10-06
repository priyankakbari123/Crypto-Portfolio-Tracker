using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Binance.Net;
using Binance.Net.Objects;
using System.Web.Configuration;
using System.Data;

namespace PortfolioTracker
{
    public partial class Home : System.Web.UI.Page
    {
        public string coin,SelectedCoin="Select Coin";
        public string[] coins = new string[] { "BTCUSDT", "BNBUSDT", "ETHUSDT", "ADAUSDT", "XRPUSDT", "SOLUSDT", "DOTUSDT", "DOGEUSDT", "AVAXUSDT", "VETUSDT" };
        public float currPrice;

        private async Task GetCoinPrice()
        {
            var client = new BinanceClient(new BinanceClientOptions() { });
            
            for(int i = 0; i < 10; i++)
            {
                coin = coins[i];
                var callResult = await client.Spot.Market.GetPriceAsync(coin);
                //CurrentPrice.Text = callResult.Data.Price.ToString();
                Application[coin] = float.Parse(callResult.Data.Price.ToString());
            }
            //var callResult =await client.Spot.Market.GetPriceAsync(coin);
            //CurrentPrice.Text = callResult.Data.Price.ToString();
            //currPrice = float.Parse(callResult.Data.Price.ToString());
            //Application["BTCUSDT"] = currPrice;
            //CurrentPrice.Text = Application[SelectedCoin].ToString();
            //DisplayDataAsync();
            
            //return float.Parse(callResult.Data.Price.ToString());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userName"]!=null)
                userNameLabel.Text = (String)Session["userName"];
            else
                Response.Redirect("Login.aspx");
            RegisterAsyncTask(new PageAsyncTask(GetCoinPrice));
            ExecuteRegisteredAsyncTasks();
            

        }

        /*
        public void DisplayDataAsync()
        {
            //print data in table
            PortfolioTrackerEntities db = new PortfolioTrackerEntities();
            int UId = (int)Session["UserID"];
            var queryAll = from coinE in db.PortfolioDetails
                           where coinE.UesrId == UId
                           select coinE  ;
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("Coin", typeof(string)));
            dt.Columns.Add(new DataColumn("BuyingPrice", typeof(float)));
            dt.Columns.Add(new DataColumn("Quantity", typeof(float)));
            dt.Columns.Add(new DataColumn("TotalInvested", typeof(float)));
            dt.Columns.Add(new DataColumn("Profit/Loss", typeof(float)));
            foreach (PortfolioDetail coinE in queryAll)
            {
                DataRow dr = null;
                dr = dt.NewRow();
                dr["Coin"] = coinE.Coin;
                dr["BuyingPrice"] = coinE.BuyPrice;
                dr["Quantity"] = coinE.Quantity;
                dr["TotalInvested"] = coinE.TotalInvested;
                coin = coinE.Coin;

                RegisterAsyncTask(new PageAsyncTask(GetCoinPrice));
                //ExecuteRegisteredAsyncTasks();
                //GetCoinPrice().Wait();
                
                //task.Wait();
                //var result = task.Result;

                //float CurrP = currPrice;
                dr["Profit/Loss"] = ((currPrice - coinE.BuyPrice) * 100)/coinE.BuyPrice;
                dt.Rows.Add(dr);
            }
            //coinEntry = (IEnumerable<PortfolioDetail>)db.PortfolioDetails.Where(s => s.UesrId == UId).Single<PortfolioDetail>();
            //if (coinEntry != default)
            //{
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        */

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SelectedCoin = (String)CoinDropDown.SelectedItem.Text;
            if(SelectedCoin != "Select Coin") {
                //RegisterAsyncTask(new PageAsyncTask(GetCoinPrice));
                //ExecuteRegisteredAsyncTasks();
                CurrentPrice.Text = Application[SelectedCoin].ToString();

            }

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
            Response.Redirect("Display.aspx");
        }
    }
}