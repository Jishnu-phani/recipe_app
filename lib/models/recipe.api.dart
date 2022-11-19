import 'dart:convert';
import 'package:recipe_app/models/recipe.dart';
import 'package:http/http.dart' as http;
import '../models/recipe.api.dart';



class RecipeApi {
  String information;
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "23", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "759ffc03c1msh5c119593a1206acp12d805jsne2278f80ff75",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    // for (var j in data['feed']){
    //   for (var k in j['content']['ingredientLines']){
    //     String information = (k['wholeLine']);
    //     Navigator.p
    //     print("\n");
    //   };
    // }


    return Recipe.recipesFromSnapshot(_temp);
  }
}