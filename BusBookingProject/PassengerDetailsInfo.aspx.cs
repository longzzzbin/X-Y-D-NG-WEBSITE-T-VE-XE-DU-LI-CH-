using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class PassengerDetailsInfo : System.Web.UI.Page
    {
        private static Random random = new Random();
        #region Global Variable
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["UserID"] !=null)
                {
                    ViewState["Count"] = 1;
                    SetInitialRow();
                }
                else
                {
                    string Url = "PassengerDetailsInfo.aspx";
                    Response.Redirect("Login.aspx?Url=" + Url);
                }
            }
        }

        public static string RandomGenerareOTP(int length)
        {
            const string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;

            // Xác định số cột
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dt.Columns.Add(new DataColumn("Column3", typeof(string)));
            dt.Columns.Add(new DataColumn("Column4", typeof(string)));
            dt.Columns.Add(new DataColumn("Column5", typeof(string)));

    
            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["Column1"] = string.Empty;
            dr["Column2"] = string.Empty;
            dr["Column3"] = string.Empty;
            dr["Column4"] = string.Empty;
            dr["Column5"] = string.Empty;
            dt.Rows.Add(dr);

            // Lưu trữ DataTable trong ViewState
            ViewState["CurrentTable"] = dt;
            gdPassengerDetails.DataSource = dt;
            gdPassengerDetails.DataBind();

        }

        private void AddNewRowToGrid()
        {

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {
                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = dtCurrentTable.Rows.Count + 1;
                    
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable"] = dtCurrentTable;

                    for (int i = 0; i < dtCurrentTable.Rows.Count - 1; i++)
                    {
                        TextBox FName = (TextBox)gdPassengerDetails.Rows[i].Cells[1].FindControl("txtFName");
                        TextBox LName = (TextBox)gdPassengerDetails.Rows[i].Cells[2].FindControl("txtLName");
                        TextBox Email = (TextBox)gdPassengerDetails.Rows[i].Cells[3].FindControl("txtEmail");
                        TextBox Contact = (TextBox)gdPassengerDetails.Rows[i].Cells[4].FindControl("txtContact");
                        TextBox City = (TextBox)gdPassengerDetails.Rows[i].Cells[5].FindControl("txtCity");
                        dtCurrentTable.Rows[i]["Column1"] = FName.Text;
                        dtCurrentTable.Rows[i]["Column2"] = LName.Text;
                        dtCurrentTable.Rows[i]["Column3"] = Email.Text;
                        dtCurrentTable.Rows[i]["Column4"] = Contact.Text;
                        dtCurrentTable.Rows[i]["Column5"] = City.Text;

                    }

                    gdPassengerDetails.DataSource = dtCurrentTable;
                    gdPassengerDetails.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }

            SetPreviousData();
        }

        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox FName = (TextBox)gdPassengerDetails.Rows[rowIndex].Cells[1].FindControl("txtFName");
                        TextBox LName = (TextBox)gdPassengerDetails.Rows[rowIndex].Cells[2].FindControl("txtLName");
                        TextBox Email = (TextBox)gdPassengerDetails.Rows[rowIndex].Cells[3].FindControl("txtEmail");
                        TextBox Contact = (TextBox)gdPassengerDetails.Rows[rowIndex].Cells[4].FindControl("txtContact");
                        TextBox City = (TextBox)gdPassengerDetails.Rows[rowIndex].Cells[5].FindControl("txtCity");
                        FName.Text = dt.Rows[i]["Column1"].ToString();
                        LName.Text = dt.Rows[i]["Column2"].ToString();
                        Email.Text = dt.Rows[i]["Column3"].ToString();
                        Contact.Text = dt.Rows[i]["Column4"].ToString();
                        City.Text = dt.Rows[i]["Column5"].ToString();
                        
                        rowIndex++;
                    }
                }
            }
        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            ViewState["Count"] = Convert.ToInt32(ViewState["Count"]) + 1;
            string seatNo = Convert.ToString(Request.QueryString["SeatNo"]);
            string[] seatArray = seatNo.Split(',').Select(str => str.Trim()).ToArray();
            if (Convert.ToInt32(ViewState["Count"]) <= seatArray.Length)
            {
                AddNewRowToGrid();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bạn không thể đặt nhiều hơn'+'" + seatArray.Length + "' + 'ghế')", true);
            }
        }

        private void addPNRDetails(string PNRNo)
        {
            string newFare = Convert.ToString(Request.QueryString["Fare"]);
            string[] fareArray = newFare.Split(',').Select(str => str.Trim()).ToArray();
            decimal amount = 0;
            for (int i = 0; i < fareArray.Length; i++)
            {
                amount += Convert.ToDecimal(fareArray[i]);
            }
            SqlCommand sqlCmd = new SqlCommand();
            if (connString.State == ConnectionState.Closed)
            {
                connString.Open();
            }
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@PNRNo", PNRNo);
            sqlCmd.Parameters.AddWithValue("@TotalAmount", Convert.ToDecimal(amount));
            sqlCmd.Parameters.AddWithValue("@TotalTicket", Convert.ToInt32(fareArray.Length));
            sqlCmd.Parameters.AddWithValue("@CreatedBy", Convert.ToInt32(Session["UserID"]));
            sqlCmd.CommandText = "ispAddPNRDetails";
            sqlCmd.Connection = connString;
            sqlCmd.ExecuteNonQuery();
        }
        private int getBook()
        {
            int ResultCout = 0;
            string seatNo = Convert.ToString(Request.QueryString["SeatNo"]);
            string[] seatArray = seatNo.Split(',').Select(str => str.Trim()).ToArray();
            int count=(seatArray.Length)-(gdPassengerDetails.Rows.Count);
            if(gdPassengerDetails.Rows.Count<seatArray.Length)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Add Passenger Details For'+'"+gdPassengerDetails.Rows.Count+"'+'More Passengers')", true);
            }
            else
            {
                string PNRNO = RandomGenerareOTP(6);
                addPNRDetails(PNRNO);
                string Origin = Convert.ToString(Request.QueryString["Origin"]);
                string Destination = Convert.ToString(Request.QueryString["Destination"]);
                string travelDate = Convert.ToString(Request.QueryString["TravelDate"]);
                string newFare = Convert.ToString(Request.QueryString["Fare"]);
                string[] fareArray = newFare.Split(',').Select(str => str.Trim()).ToArray();
                SqlCommand sqlCmd = new SqlCommand();
                if (connString.State == ConnectionState.Closed)
                {
                    connString.Open();
                }
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@RegId", SqlDbType.Int);
                sqlCmd.Parameters.Add("@BusId", SqlDbType.Int);
                sqlCmd.Parameters.Add("@Fname", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@Lname", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@Contact", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@City", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@SeatNo", SqlDbType.NVarChar, 50);
                sqlCmd.Parameters.Add("@TravelDate", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@Origin", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@Destination", SqlDbType.VarChar, 50);
                sqlCmd.Parameters.Add("@BoardingId", SqlDbType.Int);
                sqlCmd.Parameters.Add("@Fare", SqlDbType.Decimal);
                sqlCmd.Parameters.Add("@TotalSeats", SqlDbType.BigInt);
                sqlCmd.Parameters.Add("@PNRNo", SqlDbType.VarChar, 50);
                for (int i = 0; i < seatArray.Length; i++)
                {
                    sqlCmd.Parameters[0].Value = Convert.ToInt32(Session["UserID"]);
                    sqlCmd.Parameters[1].Value = Convert.ToInt32(Request.QueryString["BusID"]);
                    TextBox Fname = (TextBox)gdPassengerDetails.Rows[i].Cells[1].FindControl("txtFName");
                    TextBox Lname = (TextBox)gdPassengerDetails.Rows[i].Cells[2].FindControl("txtLName");
                    TextBox Email = (TextBox)gdPassengerDetails.Rows[i].Cells[3].FindControl("txtEmail");
                    TextBox Contact = (TextBox)gdPassengerDetails.Rows[i].Cells[4].FindControl("txtContact");
                    TextBox City = (TextBox)gdPassengerDetails.Rows[i].Cells[5].FindControl("txtCity");
                    sqlCmd.Parameters[2].Value = Convert.ToString(Fname.Text);
                    sqlCmd.Parameters[3].Value = Convert.ToString(Lname.Text);
                    sqlCmd.Parameters[4].Value = Convert.ToString(Email.Text);
                    sqlCmd.Parameters[5].Value = Convert.ToString(Contact.Text);
                    sqlCmd.Parameters[6].Value = Convert.ToString(City.Text);
                    sqlCmd.Parameters[7].Value = Convert.ToString(seatArray[i]);
                    sqlCmd.Parameters[8].Value = Convert.ToString(travelDate);
                    sqlCmd.Parameters[9].Value = Convert.ToString(Origin);
                    sqlCmd.Parameters[10].Value = Convert.ToString(Destination);
                    sqlCmd.Parameters[11].Value = Convert.ToInt32(Request.QueryString["BoardingID"]);
                    sqlCmd.Parameters[12].Value = Convert.ToDecimal(fareArray[i]);
                    sqlCmd.Parameters[13].Value = Convert.ToDecimal(fareArray[i].Length);
                    sqlCmd.Parameters[14].Value = Convert.ToString(PNRNO);
                    sqlCmd.CommandText = "ispAddPassengerDetails";
                    sqlCmd.Connection = connString;
                    ResultCout = sqlCmd.ExecuteNonQuery();

                }
               
            }
            return ResultCout;
        }

        protected void btnConirmBooking_Click(object sender, EventArgs e)
        {
            int resultcount = getBook();
            if (resultcount == -1)
            {
                string Msg = "Đặt vé thành công. Vui lòng tải về vé của bạn.";
                Response.Redirect("BookingReport.aspx?Msg=" + Msg);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đặt vé không thành công.')", true);
            }
        }
    }
}