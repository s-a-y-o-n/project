import 'package:flutter/material.dart';
import 'package:project/assignments/tourism_data.dart';
import 'package:project/assignments/tourism_details.dart';

void main() {
  runApp(MaterialApp(
    home: Tourism_app(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tourism_app extends StatelessWidget {
  const Tourism_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 24, 9, 66),
        ),
        body: ListView(
          children: data
              .map((e) => Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: GestureDetector(
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 5,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(e["image"]),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 160, left: 17),
                            child: Text(
                              e["title"],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Tourism_detalis(),
                            settings: RouteSettings(arguments: e["id"])));
                      },
                    ),
                  ))
              .toList(),
        ));
  }
}
