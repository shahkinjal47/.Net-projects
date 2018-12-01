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
            <img src="images/logo.png" height="150" /><img src="images/movies.jpg" style="width: 1094px; height: 150px; margin-left: 112px; margin-bottom: 0px;" />
            <br />
            <img src="images/Animation_withcolor.gif" />              
    
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       
          <div id="content" class="form-group col-xs-4" style="background-color: #C0C0C0; font-family: serif; height: 169px; font-size: large;">
            <p>
                <br />
                &nbsp;Search Movie: <input id="Searchbox" class="form-control" type="text" placeholder="Example: Spider-Man" runat="server" style="background-color: #CCFFFF; font-family: Algerian; font-size: medium"/>
                <br />
                <asp:Button class="btn btn-primary" ID="submit_button" runat="server" Text="Submit" OnClick="SubBtnClick" ForeColor="#CCFFFF" ToolTip="submit to search" />
                &nbsp;<a href="Song_Search.aspx" class="btn btn-primary">Go to Song Search Page</a><br /> <br />
                <asp:Label ID="Movie_info" runat="server" Text=""></asp:Label>                
             </p>
            <br />
        </div>
        
    </form>
    </body>
</html>
