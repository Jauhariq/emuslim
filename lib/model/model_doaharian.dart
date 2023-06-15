class ModelDoaHarian {
  String? title;
  String? arabic;
  String? latin;
  String? translation;

  ModelDoaHarian(this.title, this.arabic, this.latin, this.translation);

  ModelDoaHarian.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    arabic = json['arabic'];
    latin = json['latin'];
    translation = json['translation'];
  }
}
