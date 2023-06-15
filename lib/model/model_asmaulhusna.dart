class ModelAsmaulHusna {
  int? index;
  String? latin;
  String? arabic;
  String? translation_id;

  ModelAsmaulHusna(this.index, this.latin, this.arabic, this.translation_id);

  ModelAsmaulHusna.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    latin = json['latin'];
    arabic = json['arabic'];
    translation_id = json['translation_id'];
  }
}
