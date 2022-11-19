class Recipe{
  //creating parameters we'll use from api
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  //initializing the variables
  Recipe({this.name, this.images, this.rating, this.totalTime});

  //factory from JSON functions, which allows you to instantiate the variables you get from the JSON file from the api
  factory Recipe.fromJson(dynamic json) {
    //returns instance of Recipe
    return Recipe(
        name: json['name'] as String, //takes the JSON name as string
        images: json['images'][0]['hostedLargeUrl'] as String, //takes image as string, as it's an array we get the first element
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String);
  }

  //This function takes list of data that will be converted into list of recipes
  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data); //return the factory created earlier
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }


}