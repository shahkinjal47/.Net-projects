<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song_Search.aspx.cs" Inherits="Final_Project.SongSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <link rel="stylesheet" href="/Content/styles.css" type="text/css" />    
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
                    <td>
                        <img src="images/songs artists.jpg" alt="Song image" height="108" width="380" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="content">
            <br />
            <asp:Label ID="Songlabel" runat="server" Text="Search Song:"></asp:Label>
&nbsp;
            <asp:TextBox ID="songtext" label="enter song name" runat="server" placeholder="Song Name" ></asp:TextBox>

            <asp:Button ID="songbutton" runat="server" OnClick="Songbutton_Click" Text="Submit" />
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
