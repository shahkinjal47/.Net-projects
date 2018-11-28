<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song_Search.aspx.cs" Inherits="Final_Project.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <link rel="stylesheet" href="styles.css" type="text/css" />  
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Songs Collection</title>
</head>
<body>
    <form id="songs_id" runat="server">
        <div id="topnav">
            <table>
                <tr>
                    <td>
                        <h1>Song Database</h1>
                        <strong>Go ahead and know more about your favourite Songs!!</strong>
                    </td>
                    <td width="300">
                    </td>
                    <td style="float: right;">
                        <img src="images/songs artists.jpg" alt="Song image" height="98" width="380" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="content" class="form-group col-xs-4 ">
            <br />
            &nbsp;<asp:Label ID="Songlabel" runat="server" Text="Search Song:"></asp:Label>
&nbsp;
            <asp:TextBox class="form-control" ID="songtext" label="enter song name" runat="server" placeholder="Song Name" ></asp:TextBox>
            <br />
            <asp:Button class="btn btn-primary" ID="songbutton" runat="server" OnClick="songbutton_Click" Text="Submit" />
            <a href="MainPage.aspx" class="btn btn-primary">Go back to movie search</a>
            <br />
            <br />
            <asp:Label ID="song_info" runat="server" label="[song_info]"></asp:Label>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
