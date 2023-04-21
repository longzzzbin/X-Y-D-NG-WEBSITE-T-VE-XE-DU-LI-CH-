using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace BusBookingProject
{
    public partial class Holidays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string country = txtCountry.Text.Trim();
                string year = txtYear.Text.Trim();
                if (string.IsNullOrEmpty(country) || string.IsNullOrEmpty(year))
                {
                    lblError.Text = "Vui lòng nhập đủ thông tin.";
                    txtCountry.Text = "";
                    txtYear.Text = "";
                    gdHolidays.DataSource = null;
                    gdHolidays.DataBind();
                    return;
                }

                List<Holiday> holidays = await GetHolidaysAsync(country, year);

                gdHolidays.DataSource = holidays;
                gdHolidays.DataBind();

                lblError.Text = "";
            }
            catch (Exception ex)
            {
                lblError.Text = "Đã xảy ra lỗi: Thông tin đã nhập không chính xác.";
            }
        }

        private async Task<List<Holiday>> GetHolidaysAsync(string country, string year)
        {
            string apiKey = "f32558c05a1e0d22645555d1d2e2a4d53e8cb69e";
            string url = $"https://calendarific.com/api/v2/holidays?&api_key={apiKey}&country={country}&year={year}";

            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();
                    HolidayResponse holidayResponse = JsonConvert.DeserializeObject<HolidayResponse>(json);

                    List<Holiday> holidays = new List<Holiday>();
                    foreach (HolidayData holidayData in holidayResponse.response.holidays)
                    {
                        holidays.Add(new Holiday
                        {
                            Name = holidayData.name,
                            Date = holidayData.date.iso,
                            Description = holidayData.description
                        });
                    }

                    return holidays;
                }
                else
                {
                    throw new Exception("Không truy xuất được ngày lễ.");
                }
            }
        }

    }

    public class Holiday
    {
        public string Name { get; set; }
        public string Date { get; set; }
        public string Description { get; set; }
    }

    public class HolidayResponse
    {
        public HolidayDataResponse response { get; set; }
    }

    public class HolidayDataResponse
    {
        public List<HolidayData> holidays { get; set; }
    }

    public class HolidayData
    {
        public string name { get; set; }
        public HolidayDate date { get; set; }
        public string description { get; set; }
    }

    public class HolidayDate
    {
        public string iso { get; set; }
    }
}
