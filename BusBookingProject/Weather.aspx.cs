using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using Newtonsoft.Json;

namespace BusBookingProject
{
    public partial class Weather : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected async void btnSearch_Click(object sender, EventArgs e)
        {
            string city = txtCity.Text.Trim();
            if (string.IsNullOrEmpty(city))
            {
                lblError.Text = "Vui lòng nhập tên một thành phố.";
                txtCity.Text = "";
                gdWeather.DataSource = null;
                gdWeather.DataBind();
                return;
            }

            using (var client = new HttpClient())
            {
                string url = $"https://api.openweathermap.org/data/2.5/forecast?q={city}&units=metric&appid=f9e16583d5e3e0c8444aacfe78a3ce76";
                HttpResponseMessage response = await client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    var data = await response.Content.ReadAsStringAsync();
                    dynamic json = JsonConvert.DeserializeObject(data);

                    lblError.Text = "";
                    txtCity.Text = json.city.name + ", " + json.city.country;

                    var weatherList = new List<WeatherInfo>();

                    foreach (var item in json.list)
                    {
                        var weather = new WeatherInfo();
                        weather.Date = DateTime.ParseExact((string)item.dt_txt, "yyyy-MM-dd HH:mm:ss", null);
                        weather.Temperature = (float)item.main.temp;
                        weather.Description = item.weather[0].description;
                        weather.Icon = "https://openweathermap.org/img/w/" + item.weather[0].icon + ".png";

                        var windSpeed = (float)item.wind.speed;
                        weather.WindSpeed = windSpeed;


                        weatherList.Add(weather);
                    }

                    if (weatherList.Count > 0)
                    {
                        gdWeather.DataSource = weatherList;
                        gdWeather.DataBind();
                    }
                    else
                    {
                        lblError.Text = "Không tìm thấy thông tin thời tiết cho thành phố đã nhập.";
                        txtCity.Text = "";
                        gdWeather.DataSource = null;
                        gdWeather.DataBind();
                    }
                }
                else
                {
                    lblError.Text = "Đã xảy ra lỗi: Thông tin đã nhập không chính xác.";
                    txtCity.Text = "";
                    gdWeather.DataSource = null;
                    gdWeather.DataBind();
                }
            }
        }
    }

    public class WeatherInfo
    {
        public DateTime Date { get; set; }
        public float Temperature { get; set; }
        public string Description { get; set; }
        public string Icon { get; set; }
        public float WindSpeed { get; set; }
    }
}
