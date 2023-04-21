<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newspaper.aspx.cs" Inherits="BusBookingProject.Newspaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>NewsCatcher</h1>
            <p>Keyword</p>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>

    <style>
        /* Định dạng cho thẻ div */
        div {
            text-align: center;
            margin-top: 50px;            
        }

        form {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 20px auto;
            width: 90%;
            text-align: center;
            background-color: #c8eba1; 
            box-shadow: 10px 10px 5px #7f7070; 
            border-radius: 10px; 
        }

        /* Định dạng cho tiêu đề */
        h1 {
            font-size: 36px;
            color: #333;
        }

        /* Định dạng cho phần nhập từ khóa */
        p {
            font-size: 18px;
            color: #333;
            margin-top: 20px;
        }

        /* Định dạng cho TextBox */
        input[type="text"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            width: 250px;
        }

        /* Định dạng cho Button */
        #btnSearch {
            background-color: #808080;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        #btnSearch:hover {
            background-color: #0056b3;
        }

        /* Định dạng cho Label */
        label {
            display: block;
            margin-top: 20px;
            font-size: 18px;
            color: #333;
            text-align: left;
        }

        /* Định dạng cho phần hiển thị kết quả */
        .result {
            margin-top: 20px;
            font-size: 16px;
            color: #333;
            text-align: left;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #fff;
        }

    </style>
</body>
</html>
