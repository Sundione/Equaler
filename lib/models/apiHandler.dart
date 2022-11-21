import 'package:http/http.dart' as http;
import 'dart:convert';

class apiHandler {
  static List<dynamic> checkNull(List<dynamic> data) {
    for (var dat in data) {
      if (dat['image_url'] == null) {
        dat['image_url'] = 'https://comnplayscience.eu/app/images/notfound.png';
      }
      if (dat['description'] == null) {
        dat['description'] = 'No description';
      }
      if (dat['content'] == null) {
        dat['content'] = 'No content';
      }
    }
    return data;
  }

  static Future<dynamic> getNews(List<String> parameter) async {
    String rawUrl =
        "https://newsdata.io/api/1/news?apikey=pub_124249313445c3671fd4d175e97415511a437";
    for (var par in parameter) {
      rawUrl = '$rawUrl&$par';
    }
    var url = Uri.parse(rawUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map jsonResponse = jsonDecode(response.body);
      List resultsResponse = checkNull(jsonResponse['results']);
      return resultsResponse;
    }
  }
}