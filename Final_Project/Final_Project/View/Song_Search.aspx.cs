using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project
{
    public partial class SongSearch : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Songbutton_Click(object sender, EventArgs e)
        {

            string search_text = songtext.Text;

            if (search_text != null)
            {

                Search_songs();
            }
        }

        private void Search_songs()
        {
            //song_info.Text = "";
            string searchText = songtext.Text;
            string url = "https://itunes.apple.com/search?term=" + searchText;
            Uri uri = new Uri(@url);
            WebRequest webRequest = WebRequest.Create(uri);
            WebResponse response = webRequest.GetResponse();
            StreamReader streamReader = new StreamReader(response.GetResponseStream());
            String responseData = streamReader.ReadToEnd();

            Songcollection resultCollection = JsonConvert.DeserializeObject<Songcollection>(responseData);
            int ResultCountSong = resultCollection.Results.Count;


            if (ResultCountSong < 1)
            {
                song_info.Text = "<p>No search results found for <strong>" + searchText +
                    "</strong>. This song seems to be not so famous. Time to improve your taste perhaps <img src=\"images/smiley.jpg\" alt=\":P\" height=\"20\" width=\"20\" /> </p>";
            }
            else
            {
                int i = 1;
                foreach (var data in resultCollection.Results)
                {

                    song_info.Text += i + ". " + "<strong> song info: " + data.Kind
                        + " <br/>ArtistId: </strong>" + "" + data.ArtistId +
                        " <br/><strong>Artist Name: </strong>" + data.ArtistName + "<br/><strong>Collection Name</strong>"
                        + data.CollectionName + "<br/>";
                    i++;
                }

            }

        }
    }
}