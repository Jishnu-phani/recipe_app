import 'dart:convert';
import 'package:http/http.dart' as http;
import './recipe.dart';

class RecipeApi{
  // val client = OkHttpClient()
  //
  // val request = Request.Builder()
  //     .url("https://yummly2.p.rapidapi.com/feeds/list?limit=24&start=0")
  //     .get()
  //     .addHeader("X-RapidAPI-Key", "58b23d0057msh34bc0fed635f94cp139b03jsn840df45e64a4")
  //     .addHeader("X-RapidAPI-Host", "yummly2.p.rapidapi.com")
  //     .build()
  //
  // val response = client.newCall(request).execute()
  //
  //

  static Future<List<Recipe>> getReciipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list', {
      'limit':'24', 'start':"0", 'tag' : 'list.recipe.popular'
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key" : "58b23d0057msh34bc0fed635f94cp139b03jsn840df45e64a4",
      "X-RapidAPI-Host" : "yummly2.p.rapidapi.com",
      'useQueryString' : true

    });
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']){
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);


  }
}