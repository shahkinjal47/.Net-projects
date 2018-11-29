namespace Final_Project
{
    public class Result
    {
        private string popularity;


        public string Title { get; set; }
        public string Overview { get; set; }
        public string Vote_average { get; set; }
        public string Poster_path { get; set; }
        public string Release_Date { get; set; }
        public string Revenue { get; set; }
        public string Popularity { get => popularity; set => Revenue = popularity; }
    }
}