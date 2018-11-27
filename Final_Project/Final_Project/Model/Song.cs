using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project
{
    public class Song { 

        private string kind;
        private string artistId;
        private string artistName;
        private string collectionName;
        private string trackName;

        public string Kind { get => kind; set => kind = value; }
        public string ArtistId { get => artistId; set => artistId = value; }
        public string ArtistName { get => artistName; set => artistName = value; }
        public string CollectionName { get => collectionName; set => collectionName = value; }
        public string TrackName { get => trackName; set => trackName = value; }
    }
}