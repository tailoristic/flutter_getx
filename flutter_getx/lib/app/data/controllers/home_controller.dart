import 'package:flutter_getx/app/data/models/post_model.dart';
import 'package:flutter_getx/app/data/services/api_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var postList = RxList<PostModel>();

  @override
  void onInit() {
    super.onInit();
    postApi();
  }

  var myCounter = 0.obs;

  /// MAKE ALL API CALLS LIKE THIS ONLY
  void postApi() async {
    var data = await ApiServices.postApi();
    if (data != null) {
      postList.assignAll(data);
    }
  }

  /// SUPPOSE THIS IS OUR LOGIN API THEN WE DONT HAVE TO PUT IT
  /// INSIDE onInit Method as mentioned above
  /// Just call it directly on Login button in UI
  /// onPressed() => loginApi()
  void loginApi() async {
    // var data = await ApiServices.postApi();
    // if (data != null) {
    //   postList.assignAll(data);
    // }
  }
}
