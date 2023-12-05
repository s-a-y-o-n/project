import 'package:flutter/material.dart';
import 'package:project/passing_data_bw_screens/dummydata.dart';
import 'package:project/passing_data_bw_screens/productdetails.dart';

void main() {
  runApp(MaterialApp(
    home: Productlist(),
    debugShowCheckedModeBanner: false,
    routes: {"details": (context) => Productdetails()},
  ));
}

class Productlist extends StatelessWidget {
  const Productlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView(
        children: products
            .map((e) => ListTile(
                  //map((e)) is used to iterate through the map and toList() converts that map to a list
                  minVerticalPadding: 20,
                  horizontalTitleGap: 50,
                  leading: Image.network(e["image"]),
                  title: Text(
                    e["name"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.pushNamed(context, "details",
                      arguments: e[
                          "id"]), //we pass id as argument to identify the product
                ))
            .toList(),
      ),
    );
  }
}
