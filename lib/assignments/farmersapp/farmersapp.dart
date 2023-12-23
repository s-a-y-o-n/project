import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
            expandedHeight: 130,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    'FARMERS FRESH ZONE',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: w - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search', prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ],
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
                  crossAxisCount: 2, mainAxisExtent: 322))
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
