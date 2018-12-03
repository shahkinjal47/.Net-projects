<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie_search.aspx.cs" Inherits="Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" type="text/css" />    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <!-- Latest compiled and minified JavaScript -->
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
     <div id="navtop">        
        <a class="nav-link" href="/Song_Search.aspx">Search for Songs</a>
        <a class="nav-link" href="/Movie_search.aspx">Search for Movies</a>
        <a class="nav-link" href="/about_us.html">About Us</a>
    </div>
    <div class="Content">
    <h2><strong>Look for your favourite movie here.</strong></h2> 
    <form id="form1" runat="server">       
        <div style="display:block">
           <input id="Searchbox" class="form-control" type="text" placeholder="Example: Spider-Man" runat="server" />
        </div>
        <br /> 
        <div style="display:block">
             <asp:Button class="btn btn-info" ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" ForeColor="#CCFFFF" ToolTip="submit to search" />
             &nbsp;<a href="Song_Search.aspx" class="btn btn-info">Go to Song Search Page</a>
        </div>  
         <div style="display:block">
          <asp:label ID="Movie_info" runat="server" Text="Movie Search" Height="80%" Width="80%"></asp:label>           
        </div>
    </form>
    </div>
</body>
</html>
