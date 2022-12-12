// import 'dart:convert';
// import 'dart:isolate';

// import 'package:food_api/models/recipe.dart';
// import 'package:http/http.dart' as http;

// class RecipeApi {
// //   const req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

// // req.query({
// // 	"limit": "24",
// // 	"start": "0"
// // });

// // req.headers({
// // 	"X-RapidAPI-Key": "789910cb7emsh65986e8594633f8p1c0ffbjsn7cdd459ed7b0",
// // 	"X-RapidAPI-Host": "yummly2.p.rapidapi.com",
// // 	"useQueryString": true
// // });
//   static Future<List<Recipe>> getRecipe() async {
//     var uri = Uri.https('https://yummly2.p.rapidapi.com', '/feeds/list', {
//       "limit": "24",
//       "start": "0",
//     });
//     final resposne = await http.get(uri, headers: {
//       "X-RapidAPI-Key": "789910cb7emsh65986e8594633f8p1c0ffbjsn7cdd459ed7b0",
//       "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
//       "useQueryString": "true",
//     });
//     Map data = jsonDecode(resposne.body);
//     List _temp = [];
//     for (var i in data['feed']) {
//       _temp.add(i['content']['details']);
//     }
//     return Recipe.recipesFromSnapshot(_temp);
//   }
// }
import 'dart:convert';
import 'package:food_api/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "24", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "789910cb7emsh65986e8594633f8p1c0ffbjsn7cdd459ed7b0",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    dynamic data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
