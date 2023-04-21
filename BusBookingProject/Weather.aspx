<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="BusBookingProject.Weather" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thời tiết</title>
    <link rel="icon" href="https://travelcar.vn/img/travelcar-logo-title.png" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Weather Forecast</h1>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:TextBox ID="txtCity" runat="server" placeholder="Enter city"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <br />
            <br />
            <asp:GridView ID="gdWeather" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dddd, MMMM d, yyyy}" />
                    <asp:BoundField DataField="Temperature" HeaderText="Temperature (°C)" />
                    <asp:BoundField DataField="WindSpeed" HeaderText="Tốc độ gió" DataFormatString="{0:#.#} m/s" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:ImageField DataImageUrlField="Icon" HeaderText="Icon" />
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <style type="text/css">
        body {
            background-color: #f8f8f8;
            font-family: Arial, sans-serif;
            font-size: 14px;
            color: #333;
        }
        form {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 20px auto;
            width: 90%;
            text-align: center;
            background-color: #bbbdcd; 
            box-shadow: 10px 10px 5px #7f7070; 
            border-radius: 10px; 
        }
        h1 {
            margin: 0 0 10px;
            text-align: center;
            color: #333;
        }
        label {
            display: inline-block;
            width: 8%;
            font-size: 18px;
            font-weight: bold;
            vertical-align: top;
            line-height: 36px;
        }
        input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            width: 20%;
            margin: 0 0 10px 0;
            box-sizing: border-box;
        }
        #btnSearch {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 10px;
        }
        #btnSearch:hover {
            background-color: #445;
        }

        .error {
            color: red;
            font-size: 14px;
            margin: 0 0 10px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #333;
            color: #fff;
            text-align: center
        }
        tr:nth-child(8n+0) {
            background-color: #f8f8f8;
        }
        tr:nth-child(8n+1) {
            background-color: #8994ea; /*#7a8cb6*/
        }
        tr:nth-child(8n+2) {
            background-color: #8b9cce; /*#8b9cce*/ 
        }
        tr:nth-child(8n+3) {
            background-color: #99a9df;
        }
        tr:nth-child(8n+4) {
            background-color: #a7b6e8; /*#a7b6e8*/
        }
        tr:nth-child(8n+5) {
            background-color: #b4c4f6;
        }
        tr:nth-child(8n+6) {
            background-color: #d5e5f5;
        }
        tr:nth-child(8n+7) {
            background-color: #f2f2f4;  
        }
        tr:nth-child(8n+8) {
            background-color: #8092bc;  /* #8994ea*/
        }
        img {
            width: 50px;
            height: 50px;
        }
    </style>
</body>
</html>
