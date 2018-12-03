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
    public partial class sample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void songbutton_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                string search_text = songdata.Value;

                if (search_text != null)
                {

                    Search_songs();
                }
                else

                {
                    song_info.Text = "<p>No search results found for <strong>" + search_text +
                    "</strong>. This song seems to be not so famous. Time to improve your taste perhaps <img src=\"images/smiley.jpg\" alt=\":P\" height=\"20\" width=\"20\" /> </p>";
                }
            }
            
         }

        public void Search_songs()
        {
            song_info.Text = "";
            string search_text = songdata.Value;
            string url = "https://itunes.apple.com/search?term=" + search_text;
            Uri uri = new Uri(@url);
            WebRequest webRequest = WebRequest.Create(uri);
            WebResponse response = webRequest.GetResponse();
            StreamReader streamReader = new StreamReader(response.GetResponseStream());
            String responseData = streamReader.ReadToEnd();

            Songcollection resultCount = JsonConvert.DeserializeObject<Songcollection>(responseData);
            int Result_count_song = resultCount.Results.Count;


            if (Result_count_song < 1)
            {
                song_info.Text = "<p>No search results found for <strong>" + search_text +
                    "</strong>. This song seems to be not so famous. Time to improve your taste perhaps <img src=\"images/smiley.jpg\" alt=\":P\" height=\"20\" width=\"20\" /> </p>";
            }
            else
            {
                int i = 1;
                foreach (var data in resultCount.Results)
                {

                    song_info.Text += i + ". " + "<strong>Artist Name:</strong>" + data.ArtistName
                         + "<br/><strong>Collection Name:</strong>" + "" + data.CollectionName +
                         " <br/><strong>Track Name:</strong>" + data.TrackName + "<br/><strong>Primary Genre Name:</strong>"                    
                         + data.PrimaryGenreName + "<br/><strong>Preview URL:</strong> <a href=\""+ data.PreviewUrl+ "\">Click here for song Preview</a> <br/>";
                    i++;
                }              

            }      
        }
    }
}