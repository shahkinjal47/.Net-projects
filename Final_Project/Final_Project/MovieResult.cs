using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project
{
    public class Result
    {
        private string title;
        private string overview;
        private string vote_average;
        private string poster_path;
        private string release_date;
        private string revenue;
        private string popularity;
        

        public string Title { get => title; set => title = value; }
        public string Overview { get => overview; set => overview = value; }
        public string Vote_average { get => vote_average; set => vote_average = value; }
        public string Poster_path { get => poster_path; set => poster_path = value; }
        public string Release_Date { get => release_date; set => release_date = value; }
        public string Revenue { get => revenue; set => revenue = value; }
        public string Popularity { get => popularity; set => revenue = popularity; }
    }
}