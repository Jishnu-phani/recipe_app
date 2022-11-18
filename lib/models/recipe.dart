class Recipe{
  String title;
  String images;
  double rating;
  String totalTime;

  Recipe({this.title, this.images, this.rating, this.totalTime});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      title : json['name'] as String,
      images : json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totalTime: json['totalTime'] as String

    );
  }
  static List<Recipe> recipesFromSnapshot(List snapshot){
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }
}




