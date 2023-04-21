using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json.Linq;
using System.Web.Script.Serialization;

using System.Threading.Tasks;

namespace BusBookingProject
{
    public partial class Newspaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                // get the search term entered by the user
                string searchTerm = txtSearch.Text.Trim();

                // check if search term is empty
                if (string.IsNullOrEmpty(searchTerm))
                {
                    lblResult.Text = "Vui lòng nhập từ khóa.";
                    return;
                }

                // call NewsCatcher API to get news articles for the search term
                using (var client = new HttpClient())
                {
                    string apiKey = "n23D9BgOKAbtWbZw9PwRmV0DJU86GMn1AJ3mI3wX3IM";
                    string url = string.Format("https://api.newscatcherapi.com/v2/search?q={0}&lang=en&sort_by=relevancy&page=1", searchTerm);

                    client.DefaultRequestHeaders.Add("x-api-key", apiKey);
                    var response = client.GetAsync(url).Result;
                    var responseContent = response.Content.ReadAsStringAsync().Result;

                    // parse the response to get the news articles
                    var json = JObject.Parse(responseContent);
                    var articles = json["articles"];

                    // check if any news articles were found
                    if (articles == null || articles.Count() == 0)
                    {
                        lblResult.Text = "Không tìm thấy bài báo nào cho từ khóa đã nhập.";
                        return;
                    }

                    // display the news articles
                    string resultHtml = "";
                    foreach (var article in articles)
                    {
                        resultHtml += "<p><a href=\"" + article["link"].ToString() + "\">" + article["title"].ToString() + "</a></p>";
                        resultHtml += "<p>" + article["summary"].ToString() + "</p>";
                        resultHtml += "<br />";
                    }
                    lblResult.Text = resultHtml;
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = "An error occurred: " + ex.Message;
            }
        }
    }

}
