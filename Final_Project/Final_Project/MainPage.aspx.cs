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
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            {

            }
        }
        protected void SubBtnClick(object sender, EventArgs e)
        {
            Search_Movie();
        }

        public void Search_Movie()
        {
            Movie_info.Text = "";
            string search_text = Searchbox.Value;
            string url = "https://api.themoviedb.org/3/search/movie?api_key=ca0f17e030221db0ccc79d1241d7d943&language=en-US&query=" + search_text + "&page=1&include_adult=false";
            //Uri uri = new Uri(@"https://api.themoviedb.org/3/search/movie?api_key=ca0f17e030221db0ccc79d1241d7d943&language=en-US&query=hangover&page=1&include_adult=false");
            Uri uri = new Uri(@url);
            WebRequest webRequest = WebRequest.Create(uri);
            WebResponse response = webRequest.GetResponse();
            StreamReader streamReader = new StreamReader(response.GetResponseStream());
            String responseData = streamReader.ReadToEnd();
            

            ResultsCollection result_Collection = JsonConvert.DeserializeObject<ResultsCollection>(responseData);
            int Result_count = result_Collection.Results.Count;

            if(Result_count < 1)
            {
                Movie_info.Text = "<p>No search results found for <strong>" + search_text +
                    "</strong>. This movie seems to be not so famous. Time to improve your taste perhaps <img src=\"images/smiley.jpg\" alt=\":P\" height=\"20\" width=\"20\" /> </p>";
            }
            else
            {
                int i = 1;   
                foreach (var resultObj in result_Collection.Results)
                {
                    
                    Movie_info.Text += i + ". " + "<strong> Movie Title: " + resultObj.Title 
                        + " <br/>Release Date: </strong>" + resultObj.Release_Date + " <br/><strong>Overview: </strong>" + resultObj.Overview + "<br/><strong>Votes: </strong>" 
                        + resultObj.Vote_average + "<br/>";
                    i++;
                }
                
            }
            
        }
    }
}