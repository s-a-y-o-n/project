import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/api/api_dio/controller/post_controller.dart';

class Diodetails extends StatelessWidget {
  final index;
  Diodetails({required this.index});
  final postcontroller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                postcontroller.postList[index].title,
                style: TextStyle(fontSize: 20),
              ),
              Text(postcontroller.postList[index].body)
            ],
          ),
        ),
      ),
    );
  }
}
