class Movie {
  int? id;
  String? backdrop;
  String? poster;
  String? title;
  String? summary;
  String? releaseDate;
  String? status;
  num? rating;
  List? genres;
  String? type;
  int? runtime;
  List? episodeRuntime;
  String? videoUrl;

  Movie(
      {this.id,
      this.backdrop,
      this.poster,
      this.title,
      this.summary,
      this.releaseDate,
      this.status,
      this.rating,
      this.genres,
      this.type,
      this.runtime,
      this.episodeRuntime,
      this.videoUrl});

  Movie.fromJson(json) {
    id = json['id'];
    backdrop = json['backdrop_path'];
    poster = json['poster_path'];
    title = json['title'] ?? json['name'];
    summary = json['overview'];
    releaseDate = json['release_date'] ?? json['first_air_date'];
    rating = json['vote_average'];
    genres = json['genres'];
    type = json['title'] != null ? 'movie' : 'tv';
    runtime = json['runtime'] ?? 0;
  }

  Movie.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    backdrop = json['backdrop_path'];
    poster = json['poster_path'];
    title = json['title'] ?? json['name'];
    summary = json['overview'];
    releaseDate = json['release_date'] ?? json['first_air_date'];
    status = json['status'];
    rating = json['vote_average'];
    genres = json['genres'];
    type = json['title'] != null ? 'movie' : 'tv';
    runtime = json['runtime'] ?? 0;
    episodeRuntime = json['episode_run_time'] ?? [];
  }
}
