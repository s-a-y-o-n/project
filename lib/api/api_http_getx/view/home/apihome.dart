import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/api/api_http_getx/controller/product_controller.dart';
import 'package:project/api/api_http_getx/view/home/widget/product_tile.dart';

void main() {
  runApp(GetMaterialApp(home: ApiHome()));
}

class ApiHome extends StatelessWidget {
  ApiHome({super.key});
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: SizedBox(
        child: Obx(() {
          if (productController.isloading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
                itemCount: productController.productlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Producttile(productController.productlist[index]);
                });
          }
        }),
      ),
    );
  }
}
