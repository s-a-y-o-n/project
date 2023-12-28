import 'package:get/get.dart';
import 'package:project/api/api_http_getx/service/http_service.dart';

class ProductController extends GetxController {
  RxBool isloading = true.obs;
  var productlist = [].obs; //making the list observable
  @override
  void onInit() {
    loadproduct(); //to fetch data from service class
    super.onInit();
  }

  void loadproduct() async {
    try {
      isloading(true);
      var products = await HttpService.fetch_products();
      if (products != null) {
        productlist.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isloading(false);
    }
  }
}
