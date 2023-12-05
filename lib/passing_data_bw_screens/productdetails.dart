import 'package:flutter/material.dart';
import 'package:project/passing_data_bw_screens/dummydata.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)
        ?.settings
        .arguments; //the argument from the previous page is copied into the variable id
    final product = products.firstWhere((element) =>
        element["id"] ==
        id); //element is a user defined variable it can be anything
    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
      ),
      body: Container(
        child: Center(
          child: Column(children: [
            Image.network(
              product["image"],
              height: 300,
            ),
            Text("${product["price"]}"),
            Text(product["description"])
          ]),
        ),
      ),
    );
  }
}
