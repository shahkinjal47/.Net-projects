<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>   
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
    <nav class="navbar navbar-expand-lg ">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html"><h4>Home</h4> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about_us.html"><h4>About us</h4></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Song_Search.aspx"><h4>Songs</h4></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="MainPage.aspx"><h4>Movies</h4></a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div id="topnav">
            <br />
<h2><strong>Look for your favourite movie here.</strong> </h2>    
        </div>
     
        <br />
                  <img src="images/movies.jpg" style="width: 1094px; height: 150px; margin-left: 112px; margin-bottom: 0px;" />

       
          <div id="content" class="form-group col-xs-4" style="background-color: black; font-family: serif; height: 169px; font-size: large;">
            <p>
                <br />
                &nbsp;Search Movie: <input id="Searchbox" class="form-control" type="text" placeholder="Example: Spider-Man" runat="server" />
                <br />
                <asp:Button class="btn btn-primary" ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" ForeColor="#CCFFFF" ToolTip="submit to search" />
                &nbsp;<a href="Song_Search.aspx" class="btn btn-primary">Go to Song Search Page</a><br /> <br />
                <asp:Label ID="Movie_info" runat="server" Text=""></asp:Label>                
             </p>
            <br />
            <a href="about_us.html">About us</a>
        </div>
            

    </form>

    </body>
</html>
