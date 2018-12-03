using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project
{
    public class ResultsCollection
    {
        //Created this class to hold the multiple movies details received in json response to the movie search
        private List<Result> results;

        public List<Result> Results { get => results; set => results = value; }
    }
}