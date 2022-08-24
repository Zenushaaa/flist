class Tv {
  int? id;
  String? backdrop;
  String? poster;
  String? title;
  String? summary;
  String? releaseDate;
  num? rating;
  String? videoUrl;

  Tv(
      {this.id,
      this.backdrop,
      this.poster,
      this.title,
      this.rating,
      this.videoUrl});

  Tv.fromJson(json) {
    id = json['id'];
    backdrop = json['backdrop_path'];
    poster = json['poster_path'];
    title = json['original_name'];
    summary = json['overview'];
    releaseDate = json['first_air_date'];
    rating = json['vote_average'];
  }
}
