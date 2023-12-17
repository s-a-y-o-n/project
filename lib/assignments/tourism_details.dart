import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/assignments/tourism_data.dart';

class Tourism_detalis extends StatelessWidget {
  const Tourism_detalis({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final details = data.firstWhere((element) => element["id"] == id);
    final places = details["places"];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(details["image"]), fit: BoxFit.fill)),
              height: 300,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                details["title"],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                details["description"],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Places to visit',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(places[index]),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                )))
          ],
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 24, 9, 66))),
            child: Text(
              'Press To Explore',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
