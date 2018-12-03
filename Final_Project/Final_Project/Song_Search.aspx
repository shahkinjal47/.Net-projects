<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song_Search.aspx.cs" Inherits="Final_Project.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" type="text/css" />     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
    <script>
    $( function(){
        $("#songdata").autocomplete({
           source: "Songautocomplete.aspx",
          minLength : 2
        });
    });
  
   </script>
   <link rel="stylesheet" href="styles.css" type="text/css" />
      <title>Songs Collection</title>
</head>
<body>
 <div id="navtop">       
        <a class="nav-link" href="/Song_Search.aspx">Search for Songs</a>
        <a class="nav-link" href="/Movie_search.aspx">Search for Movies</a>
        <a class="nav-link" href="/about_us.html">About Us</a>
    </div>
    <div class="Content">    
        <h2><strong>Look for your favourite song here.</strong> </h2>   
        <form id="songs_id" runat="server">            
            <div style="display:block">
                <input id="songdata" class="col-md-6" type="text" placeholder="Example: Who says" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorsearch" runat="server" ErrorMessage="Enter any song to search" ControlToValidate="songdata" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
            <asp:Button class="btn btn-info" ID="songbutton" runat="server" Text="Submit" OnClick="songbutton_Click" ToolTip="submit to search" />
            &nbsp;<a href="Movie_search.aspx" class="btn btn-info">Go back to movie search</a><br />   
            <div style="display:block">
                <asp:Label ID="song_info" runat="server" Text="Song Search"></asp:Label>  
            </div>
        </form>
    </div>
</body>
</html>
