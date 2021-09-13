import 'package:flutter/material.dart';
import 'package:flutter_getx/app/data/controllers/home_controller.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);
  static final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50.0),
            Obx(
              () => Text(
                homeController.myCounter.value.toString(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                homeController.myCounter++;
              },
              child: Center(
                child: Text("Add"),
              ),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeController.postList.length,
                  itemBuilder: (c, i) {
                    return ListTile(
                      title: Text(homeController.postList[i].title),
                      subtitle: Text(homeController.postList[i].body),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
