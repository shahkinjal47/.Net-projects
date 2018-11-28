<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Movie Info</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="topnav">
            <table>
                <tr>
                    <td>
                        <h1>Movie Database</h1>
                        <strong>Go ahead and know more about your favourite movies!!</strong>
                    </td>
                    <td width="300">

                    </td>
                    <td style="float: right;">
                        <img src="images/movies.jpg" alt="Movie image" height="108" width="380" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="content">
            <p>
                <br />
                Search Movie: <input id="Searchbox" type="text" placeholder="Movie Name" runat="server"/>
                <asp:Button ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" />
                <br /> <br />
                <asp:Label ID="Movie_info" runat="server" Text=""></asp:Label>                
             </p>
            <br />
        </div>
    </form>
</body>
</html>
