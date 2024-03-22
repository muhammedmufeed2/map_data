import 'dart:convert';



import 'package:http/http.dart';


import '../model_class/collect_data.dart';
import 'api_clint.dart';




class collection {
  ApiClient apiClient = ApiClient();


  Future<CollectData> getAnime() async {
    String trendingpath = 'https://maps-data.p.rapidapi.com/searchmaps.php?query=restaurant&limit=20&country=us&lang=en&lat=51.5072&lng=0.12&offset=0&zoom=13';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return CollectData.fromJson(jsonDecode(response.body));
  }
}