﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="styles.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                            <figure>
                            <img src="images/movies.jpg" alt="Movie image" height="98" width="380" />
                            </figure>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="content" class="form-group col-xs-4">
                    <br />
                    &nbsp;
                    Search Movie: <input id="Searchbox" class="form-control" type="text" placeholder="Movie Name" runat="server"/>
                    <br />
                    <asp:Button class="btn btn-primary" ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" />
                    <a href="SongSearch.aspx" class="btn btn-primary">Go to Song Search Page</a>
                    <br /> <br />
                    <asp:Label ID="Movie_info" runat="server" Text=""></asp:Label>                
                <br />
            </div>
        </form>
    </body>
</html>
