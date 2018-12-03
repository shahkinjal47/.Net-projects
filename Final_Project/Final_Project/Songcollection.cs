using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project
{
    public class Songcollection
    {
        //Created this class to hold the multiple movies details received in json response to the song search
        private List<Song> results;

        public List<Song> Results { get => results; set => results = value; }
    }
}