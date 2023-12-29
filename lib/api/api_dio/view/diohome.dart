import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:project/api/api_dio/controller/post_controller.dart';
import 'package:project/api/api_dio/utils/colorconst.dart';
import 'package:project/api/api_dio/view/detailsdio.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void main() {
  runApp(GetMaterialApp(
    home: Diohome(),
  ));
}

class Diohome extends StatelessWidget {
  Diohome({super.key});
  final postcontroller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.bgcolor,
      floatingActionButton: Obx(() =>
          postcontroller.isinternetconnected.value ? buildFAB() : Container()),
      body: Obx(() => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: postcontroller.isinternetconnected.value
                ? (postcontroller.isloading.value ? showAnimation() : getData())
                : shownointernet(context),
          )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        postcontroller.isscrolldown.value
            ? postcontroller.scrollup()
            : postcontroller.scrolldown();
      },
      child: FaIcon(postcontroller.isscrolldown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }

  Center showAnimation() {
    return Center(
      child: Lottie.network(
          "https://lottie.host/b70bf514-3212-456c-b677-29c74cc6918c/QhzUs7TPIU.json"),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
      onRefresh: () {
        return postcontroller.getPost();
      },
      child: ScrollablePositionedList.builder(
          itemCount: postcontroller.postList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Get.to(Diodetails()),
              child: Card(),
            );
          }),
    );
  }

  Center shownointernet(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Lottie.network(
              "https://lottie.host/cb4cc2bc-a63c-44c3-8e85-c6be2e61de73/5crmere2cL.json"),
        ),
        MaterialButton(
          onPressed: () {
            ontapmaterialbutton(context);
          },
          child: Text('Try Again'),
        )
      ],
    ));
  }

  void ontapmaterialbutton(BuildContext context) async {
    if (await InternetConnectionChecker().hasConnection == true) {
      postcontroller.getPost();
    } else {
      showTopSnackBar(Overlay.of(context),
          CustomSnackBar.error(message: 'No Internet, Try again'));
    }
  }
}
