class City {
  int id;
  String name;
  String imageurl;
  bool isPopular;

  City(
      {required this.id,
      required this.name,
      required this.imageurl,
      this.isPopular = false});
}
