class Genre {
  int? id;
  String? name;

  Genre({this.id, this.name});

  Genre.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
  Genre.fromJson(json) {
    id = json['id'];
    name = json['name'];
  }
}
