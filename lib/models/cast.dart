class Cast {
  String? name;
  String? character;
  String? imageUrl;

  Cast({
    this.name,
    this.character,
    this.imageUrl,
  });

  Cast.fromJson(json) {
    name = json['name'];
    character = json['character'];
    imageUrl = json['profile_path'];
  }
}
