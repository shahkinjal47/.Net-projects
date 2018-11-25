<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song_Search.aspx.cs" Inherits="Final_Project.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <link rel="stylesheet" href="songs_format.css" type="text/css" />    
    <title>songs Collection</title>
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
                        <img src="images/bg.jpg" alt="Song image" height="108" width="380" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="content">
            Please Enter a Song to search:<br />
            <br />
            <br />
            <asp:Label ID="Songlabel" runat="server" Text="Enter Song:"></asp:Label>
&nbsp;
            <asp:TextBox ID="songtext" label="enter song name" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="songbutton" runat="server" OnClick="songbutton_Click" Text="Submit-- yaya!!!" />
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
