
class Movie {
  final String imdbId; 
  final String poster; 
  final String title; 
  final String year; 

  Movie({this.imdbId, this.title, this.poster, this.year}); 

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      imdbId: json["imdbID"], 
      poster: json["Poster"], 
      title: json["Title"], 
      year: json["Year"]
    );
  }

}