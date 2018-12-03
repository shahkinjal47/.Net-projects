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

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }
        protected void SubBtnClick(object sender, EventArgs e)
        {
            // This function will be called when user clicks "Search" button after entering movie name to search
            if (Page.IsValid)
            {

                string search_movie = null;
                search_movie = Searchbox.Value;

                if (search_movie != null && search_movie.Length > 0) //Checking if user did enter movie name to search
                {
                    Search_Movie(); //calling function to search movies 
                }
                else //display below message when no movie name entered
                {
                    Movie_info.Text = "<p> Please enter movie name to search. </p>";

                }

            }
            
        }

        public void Search_Movie()
        {
            //This function consumes imdb json to fetch movie details which user searched
            Movie_info.Text = "";
            string search_text = Searchbox.Value;
            string url = "https://api.themoviedb.org/3/search/movie?api_key=ca0f17e030221db0ccc79d1241d7d943&language=en-US&query=" + search_text + "&page=1&include_adult=false";            
            Uri uri = new Uri(@url);
            WebRequest webRequest = WebRequest.Create(uri);
            WebResponse response = webRequest.GetResponse();
            StreamReader streamReader = new StreamReader(response.GetResponseStream());
            String responseData = streamReader.ReadToEnd();            

            ResultsCollection result_Collection = JsonConvert.DeserializeObject<ResultsCollection>(responseData);
            int Result_count = result_Collection.Results.Count;

            if(Result_count < 1) //If no search result found for given movie, display below message to user
            {
                Movie_info.Text = "<p>No search results found for <strong>" + search_text +
                "</strong>. This movie seems to be not so famous. Time to improve your taste perhaps <img src=\"images/smiley.jpg\" alt=\":P\" height=\"20\" width=\"20\" /> </p>";
            }
            else //display the results of the search
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