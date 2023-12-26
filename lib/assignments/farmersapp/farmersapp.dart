import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/assignments/farmersapp/data.dart';

class Farmershome extends StatelessWidget {
  const Farmershome({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            forceElevated: true,
            stretch: true,
            elevation: 5,
            snap: true,
            backgroundColor: Colors.green,
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            actions: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              const Text(
                'Kochi',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(child: Text('Add Location')),
                ],
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'OFFERS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 44, 167, 48)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(92, 69, 192, 75)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'VEGETABLES',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 44, 167, 48)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(92, 69, 192, 75)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'FRUITS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 44, 167, 48)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(92, 69, 192, 75)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'EXOTIC',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 44, 167, 48)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(92, 69, 192, 75)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'FRESH CUTS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 44, 167, 48)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(92, 69, 192, 75)),
                          ),
                        )
                      ],
                    )),
                CarouselSlider(
                    items: List.generate(
                        4,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(carosel[index]),
                                fit: BoxFit.fill,
                              )),
                            )),
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 200,
                      viewportFraction: 1,
                      initialPage: 1,
                      aspectRatio: 16 / 9,
                      enableInfiniteScroll: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayCurve: Curves.decelerate,
                    )),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      color: Colors.white,
                      height: 120,
                      width: w - 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                "https://media.istockphoto.com/id/1155690403/vector/stopwatch-symbol.jpg?s=612x612&w=0&k=20&c=FAhAKUsAqGvhLY9fu8FNrGP6psEZkjzi7Z8Ez2XcPTI=",
                                height: 50,
                                width: 50,
                              ),
                              const Text("30 MINS POLICY")
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                "https://media.istockphoto.com/id/1514025235/vector/traceability-icon-magnifying-glass-with-document-icon-related-to-find-search-line-icon-style.jpg?s=612x612&w=0&k=20&c=rQUyUQ-k_j0I2U5aXno0mBUtWDHVlCnG3fRLXWBNVhE=",
                                height: 50,
                                width: 50,
                              ),
                              const Text("TRACEABILITY")
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                "https://media.istockphoto.com/id/1083803596/vector/crowdsourcing-design-concept.jpg?s=612x612&w=0&k=20&c=bKjz54tgQjfvNPdOtCMNVW2pcsN5CuFLzyImIUfiGhA=",
                                height: 50,
                                width: 50,
                              ),
                              const Text("LOCAL SOURCING")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Shop By Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ])),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                          child: Column(
                        children: [
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(category[index]["image"]),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            child: Center(
                              child: Text(category[index]["cat"]),
                            ),
                          )
                        ],
                      )),
                  childCount: category.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 150)),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 25,
            ),
            Container(
              width: w,
              height: 230,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1362890046/photo/farmer-checking-the-quality-of-his-corn-field.jpg?s=612x612&w=0&k=20&c=IenUY9bpwyoANDHWBseYIhg5Tdn9H1GKHXKkflmseJo="),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Best Selling Products',
                style: TextStyle(fontSize: 21),
              ),
            )
          ])),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          products[index]["image"]),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                products[index]["name"],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                '\u{20B9}${products[index]["rate"]}',
                                style: const TextStyle(fontSize: 17),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  products[index]["quantity"],
                                  style: const TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'ADD',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.green)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  childCount: products.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 322)),
          SliverList(
              delegate: SliverChildListDelegate([
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'VIEW MORE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  minimumSize: MaterialStatePropertyAll(Size(w, 40))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: w,
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/499695105/photo/acidic-food.jpg?s=612x612&w=0&k=20&c=avxH4Xu92_z_fd5b8wUWCi3RdDKhXzKcstsu27VsSiI="),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    5,
                    (index) => Card(
                          child: Container(
                            height: 265,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              blogs[index]["image"]),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  blogs[index]["title"],
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('a year ago',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromARGB(
                                                  255, 53, 53, 53))),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.green,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'VIEW MORE',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'What Our Customers Say?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (context, index, int pageViewIndex) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(review[index]["image"]),
                      radius: 25,
                    ),
                    title: Text(
                      review[index]["name"],
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(review[index]["content"]),
                  );
                },
                options: CarouselOptions(
                    height: 300, viewportFraction: 1, autoPlay: true)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                'This Kochi based farm-to-fork online marketplace is connecting farmers directly to customers',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/icons/The_Economic_Times_logo.png",
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  "assets/icons/thehindu.png",
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  "assets/icons/yourstory.png",
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  "assets/icons/indianexpress.png",
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Get To Know Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'About Us',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Our Farmers',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Blog',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Useful Links',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Return & Refund Policy',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.twitter)),
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.youtube)),
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.facebook)),
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.instagram)),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Copyright @ 2021 Farmers Fresh Zone. All Rights Reserved. V 2.40.51',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}
