<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Holidays.aspx.cs" Inherits="BusBookingProject.Holidays" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ngày nghỉ lễ</title>
    <link rel="icon" href="https://travelcar.vn/img/travelcar-logo-title.png" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Holidays</h1>
            <div>
                <label for="txtCountry">Country</label>
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtYear">Year</label>
                <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </div>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:GridView ID="gdHolidays" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
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
            background-color: #c0c7ff; 
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
        input[type="text"], input[type="button"] {
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
            background-color: #444;
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
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
            text-align: center
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #8994ea;
        }
    </style>

</body>
</html>
