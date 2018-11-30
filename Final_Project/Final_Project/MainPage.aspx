<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>    
    <script>
    $( function(){
        $("#Searchbox").autocomplete({
           source: "Autocomplete.aspx",
          minLength : 2
        });
    });
  
  </script>
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
                        <img src="images/movies.jpg" alt="Movie image" height="98" width="380" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="content" class="form-group col-xs-4">
            <p>
                <br />
                &nbsp;Search Movie: <input id="Searchbox" class="form-control" type="text" placeholder="Example: Spider-Man" runat="server"/>
                <br />
                <asp:Button class="btn btn-primary" ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" />
                <a href="Song_Search.aspx" class="btn btn-primary">Go to Song Search Page</a>
                <br /> <br />
                <asp:Label ID="Movie_info" runat="server" Text=""></asp:Label>                
             </p>
            <br />
        </div>
    </form>
</body>
</html>
