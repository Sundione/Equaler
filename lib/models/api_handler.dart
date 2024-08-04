import 'package:http/http.dart' as http;
import 'dart:convert';

//class that manage data from api
class ApiHandler {
  //change news results
  static List<dynamic> changeResultsMethod(List<dynamic> results) {
    for (var result in results) {
      //remove time from pubDate
      result['pubDate'] =
          result['pubDate'].substring(0, result['pubDate'].indexOf(" "));
      //if image_url not exist or url is incorrrect set it to default image
      if (result['image_url'] == null || result['image_url'].length <= 4) {
        result['image_url'] =
            'https://comnplayscience.eu/app/images/notfound.png'; //set default image
      }
      //if news content not exist change its value
      if (result['content'] == null) {
        //if news description exist change news content to news description
        if (result['description'] != null) {
          result['content'] = result['description'];
        }
        //if not then no content
        else {
          result['content'] = 'No content';
        }
      }
      //if news description not exist then no description
      if (result['description'] == null) {
        result['description'] = 'No description';
      }
    }
    return results;
  }

  static Future<Map> getNewsMethod(List<String> parameter) async {
    static const String apiKey = String.fromEnvironment(
      'API_KEY',
      defaultValue: '',
    );
    String rawUrl =
        "https://newsdata.io/api/1/news?apikey=" + apiKey;
    // adding parameter to url for more specific query
    for (var par in parameter) {
      rawUrl = '$rawUrl&$par';
    }
    var url = Uri.parse(rawUrl);
    //get response from api provider
    var response = await http.get(url);
    //if successfully call api provider and get data back
    if (response.statusCode == 200) {
      //decode response json to utf8
      Map jsonResponse = json.decode(utf8.decode(response.bodyBytes));
      changeResultsMethod(jsonResponse['results']);
      return jsonResponse;
    }
    //if unsuccessfully call api provider and don't get data back
    throw Exception(response.reasonPhrase);
  }
}
