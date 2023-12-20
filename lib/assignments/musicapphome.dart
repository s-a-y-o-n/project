import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Musicapp_Home(),
//   ));
// }

class Musicapp_Home extends StatelessWidget {
  Musicapp_Home({super.key});
  var images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLyC_WrqH3dfkrifv9Uj494gjXGUzDDb4ydQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQxV-0Och0guWN53Bna5QByptYkSxibP80Tw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJXGkOaxXtntUXCODriMfH2BffrJuGbCnPjA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPV2QcbQqJht9eh1Toa-RzWBk4RXnmkWjzRg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Bp-SGtP1ky6jelo_T3TTely2iTuSQjBkYw&usqp=CAU",
    "https://images.unsplash.com/photo-1618175349544-71ca933f4979?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1605464315542-bda3e2f4e605?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1528243097678-739049bbf2e7?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];
  var simg = [
    "https://images.unsplash.com/photo-1511379938547-c1f69419868d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1494232410401-ad00d5433cfa?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1513104487127-813ea879b8da?q=80&w=1073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8TXVzaWN8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1510915361894-db8b60106cb1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1487180144351-b8472da7d491?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fE11c2ljfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1484876065684-b683cf17d276?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fE11c2ljfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dGFtaWwlMjBtdXNpY3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1465821185615-20b3c2fbf41b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRhbWlsJTIwbXVzaWN8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1524650359799-842906ca1c06?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];
  var song = [
    "Boulevard of broken dreams",
    "War of Change",
    "Bones",
    "Dusk Till Dawn",
    "The child in us",
    "The Real Slim Shady",
    "Closer",
    "Raja Raja Chozhan",
    "Ilaya Nila",
    "Kinavu Kondu"
  ];
  var artist = [
    "GreenDay",
    "Thousand foot Krutch",
    "Imagine Dragons",
    "ZAYN, Sia",
    "Enigma",
    "Eminem",
    "The Chainsmokers",
    "Ilaiyaraja",
    "Ilaiyaraja",
    "Rex Vijayan"
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'Musify.',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 129, 171),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: h * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Suggested playlists",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 129, 171),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          8,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 17),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    height: 250,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(images[index]),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                              )),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Recomented for you",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 129, 171),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  simg[index],
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.fill,
                                )),
                            title: Text(
                              song[index],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 129, 171),
                                  fontSize: 20),
                            ),
                            subtitle: Text(
                              artist[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            trailing: Wrap(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Color.fromARGB(255, 255, 129, 171),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.download_outlined,
                                  color: Color.fromARGB(255, 255, 129, 171),
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
