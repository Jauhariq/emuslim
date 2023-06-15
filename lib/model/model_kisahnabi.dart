class ModelKisahNabi {
  dynamic name;
  dynamic thn_kelahiran;
  dynamic usia;
  dynamic description;
  dynamic tmp;
  dynamic image_url;

  ModelKisahNabi(this.name, this.thn_kelahiran, this.usia, this.description,
      this.tmp, this.image_url);

  ModelKisahNabi.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    thn_kelahiran = json['thn_kelahiran'];
    usia = json['usia'];
    description = json['description'];
    tmp = json['tmp'];
    image_url = json['image_url'];
  }
}
