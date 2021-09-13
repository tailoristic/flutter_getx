import 'package:flutter_getx/app/data/api/api.dart';
import 'package:flutter_getx/app/data/models/post_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<PostModel>> postApi() async {
    try {
      var response = await http.get(Uri.parse(Api.postApi));
      if (response.statusCode == 200) {
        return postModelFromJson(response.body);
      } else {
        throw Exception;
      }
    } catch (e, stack) {
      print(e + stack);
    }
    return null;
  }
}
