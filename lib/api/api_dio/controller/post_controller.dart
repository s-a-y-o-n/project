import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:project/api/api_dio/model/postmodel.dart';
import 'package:project/api/api_dio/service/dioservice.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PostController extends GetxController {
  RxList postList = RxList(); // same as var postList=[].obs
  RxBool isloading = true.obs;
  RxBool isinternetconnected = true.obs;
  RxBool isscrolldown = false.obs;
  var url = "https://jsonplaceholder.typicode.com/posts";
  var item_ctrl = ItemScrollController();
  checkinternetconnected() async {
    isinternetconnected.value = await InternetConnectionChecker().hasConnection;
  }

  getPost() async {
    checkinternetconnected();
    isloading.value = true;
    var response = await DioService().fetchpost(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        postList.add(PostModel.fromJson(element));
      });
      isloading.value = false;
    }
  }

  scrolldown() {
    item_ctrl.scrollTo(
        index: postList.length,
        duration: Duration(seconds: 5),
        curve: Curves.bounceIn);
    isscrolldown.value = true;
  }

  scrollup() {
    item_ctrl.scrollTo(
        index: 0, duration: Duration(seconds: 4), curve: Curves.bounceOut);
    isscrolldown.value = false;
  }

  @override
  void onInit() {
    getPost();
    super.onInit();
  }
}
