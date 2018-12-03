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
    public partial class Songautocomplete : System.Web.UI.Page
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
                string url = "https://itunes.apple.com/search?term=" + search_text;
                Uri uri = new Uri(@url);
                WebRequest webRequest = WebRequest.Create(uri);
                WebResponse response = webRequest.GetResponse();
                StreamReader streamReader = new StreamReader(response.GetResponseStream());
                String responseData = streamReader.ReadToEnd();

                Songcollection resultCount = JsonConvert.DeserializeObject<Songcollection>(responseData);

                List<String> matchedinfosong = new List<String>();

                if (term != null && term.Length > 0)
                {

                    foreach (var resultObj in resultCount.Results)

                    {


                        if (!string.IsNullOrEmpty(resultObj.TrackName) && resultObj.TrackName.ToUpper().Contains(term.ToUpper()))
                        {
                            matchedinfosong.Add(resultObj.TrackName);

                        }                       
                        
                    }

                }
                string matchedJson = JsonConvert.SerializeObject(matchedinfosong);

                Response.Write(matchedJson);
            }

            Response.End();
        }

      
    }
}




