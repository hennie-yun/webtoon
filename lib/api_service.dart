import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoon_project/webtoon_model.dart';




class ApiService {
  static const baseUrl = "https://korea-webtoon-api-cc7dda2f0d77.herokuapp.com/webtoons";

  List<WebtoonModel> webtoonInstance = [];

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstance = [];
    final uri = Uri.parse('$baseUrl');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> webtoons = jsonData['webtoons'];
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstance.add(instance);
      }

      return webtoonInstance;
    }

    throw Error();
  }


}
