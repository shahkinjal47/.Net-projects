using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project
{
    public class Song {

        //Created this class to capture various attributes from the json response received on song search
        private string artistName;
        private string collectionName;
        private string trackName;
        private string primaryGenreName;
        private string previewUrl;

        public string ArtistName { get => artistName; set => artistName = value; }
        public string CollectionName { get => collectionName; set => collectionName = value; }
        public string TrackName { get => trackName; set => trackName = value; }
        public string PrimaryGenreName { get => primaryGenreName; set => primaryGenreName = value; }
        public string PreviewUrl { get => previewUrl; set => previewUrl = value; }
    }
}