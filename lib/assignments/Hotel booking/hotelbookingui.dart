import 'package:flutter/material.dart';

import 'package:project/assignments/Hotel%20booking/hoteldata.dart';

void main() {
  runApp(MaterialApp(
    home: Hotelbooking(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotelbooking extends StatelessWidget {
  const Hotelbooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 120,
            title: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@rjun',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Text(
                    'Find Your Favourite Hotel',
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              trailing: Container(
                height: 120,
                width: 70,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Material(
                  elevation: 10,
                  shadowColor: Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 241, 241, 241),
                        hintText: 'Search for Hotel',
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    'Popular Hotels',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        hoteldata.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: Card(
                                elevation: 5,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 140,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    hoteldata[index]["Image"]),
                                                fit: BoxFit.fill)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 10),
                                        child: Text(
                                          hoteldata[index]["Name"],
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'A Five Star Hotel in Kochi',
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 124, 123, 123)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "\$ ${hoteldata[index]["price"]}/night",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Text(
                                              '4.5',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hotel Packages',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ))
                    ],
                  ),
                ),
                Column(
                  children: List.generate(hoteldata.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 140,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          hoteldata[index]["Image"]),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hoteldata[index]["Name"],
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    'A Five Star Hotel in Kochi',
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  Text(
                                    "\$ ${hoteldata[index]["price"]}/night",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.directions_car_sharp,
                                        color: Colors.blue,
                                      ),
                                      Icon(
                                        Icons.hot_tub,
                                        color: Colors.blue,
                                      ),
                                      Icon(
                                        Icons.wine_bar,
                                        color: Colors.blue,
                                      ),
                                      Icon(
                                        Icons.wifi,
                                        color: Colors.blue,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.blue)),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            )
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
