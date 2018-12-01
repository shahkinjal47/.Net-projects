<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song_Search.aspx.cs" Inherits="Final_Project.sample" %>

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
        $("#songdata").autocomplete({
           source: "Songautocomplete.aspx",
          minLength : 2
        });
    });
  
  </script>
   
    <title>Songs Collection</title>
</head>
<body>
    <form id="songs_id" runat="server">
        <div id="topnav">
            <img src="images/colorful.gif" height="150" style="width: 348px" /> <img src="images/songsartists.jpg" style="width: 1094px; height: 150px; margin-left: 112px; margin-bottom: 0px;" />
            <br />
            <img src="images/songquote.gif" style="width: 1235px; height: 87px" />   
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div id="content" class="form-group col-xs-4 " style="background-color: #C0C0C0; font-family: serif; height: 169px; font-size: large;">
            <br />
             Search Song:<input id="songdata" class="form-control" type="text" placeholder="Who says" runat="server" style="background-color: #CCFFFF; font-family: Algerian; font-size: medium"/>
                <br />
                <asp:Button class="btn btn-primary" ID="songbutton" runat="server" Text="Submit" OnClick="songbutton_Click" ForeColor="#CCFFFF" ToolTip="submit to search" />
                &nbsp;<a href="MainPage.aspx" class="btn btn-primary">Go back to movie search</a><br />                        
            
            <br /> <br /><br /><br />  
        
           
        </div>
        <div id="label">
            <asp:Label ID="song_info" runat="server" Text=""></asp:Label>  
        </div>

           
    </form>
</body>
</html>
