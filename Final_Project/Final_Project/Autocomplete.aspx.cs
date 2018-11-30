using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

namespace Final_Project
{
    public partial class Autocomplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String term = Request.QueryString["term"];

            // get the letters that the user typed 

            Response.Clear();
            // change the content type, so the browser knows it's JSON
            Response.ContentType = "application/json; charset=utf-8";
            using (var webClient = new WebClient())
            {

                string search_text = term;           
                string url = "https://api.themoviedb.org/3/search/movie?api_key=ca0f17e030221db0ccc79d1241d7d943&language=en-US&query=" + search_text + "&page=1&include_adult=false";
                Uri uri = new Uri(@url);
                WebRequest webRequest = WebRequest.Create(uri);
                WebResponse response = webRequest.GetResponse();
                StreamReader streamReader = new StreamReader(response.GetResponseStream());
                String responseData = streamReader.ReadToEnd();
                //String rawData =
                //    webClient.DownloadString("https://gist.githubusercontent.com/jasonbaldridge/2668632/raw/e56320c485a33c339791a25cc107bf70e7f1d763/music.json");

                ResultsCollection result_Collection = JsonConvert.DeserializeObject<ResultsCollection>(responseData);                

                List<String> matchedinfo = new List<String>();

                if (term != null && term.Length > 0)
                {

                    foreach (var resultObj in result_Collection.Results)

                    {
                        if (resultObj.Title.Contains(term))
                        {
                            matchedinfo.Add(resultObj.Title);

                        }
                    }

                }
                string matchedJson = JsonConvert.SerializeObject(matchedinfo);

                Response.Write(matchedJson);

            }

            Response.End();
        }
    }
}


