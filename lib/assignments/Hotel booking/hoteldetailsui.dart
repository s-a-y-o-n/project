import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Hoteldetails(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hoteldetails extends StatefulWidget {
  const Hoteldetails({super.key});

  @override
  State<Hoteldetails> createState() => _HoteldetailsState();
}

bool fav = false;

class _HoteldetailsState extends State<Hoteldetails> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
          ),
          Container(
            height: 350,
            width: w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://digital.ihg.com/is/image/ihg/crowne-plaza-kochi-3941030496-3x2?wid=733"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 230,
            left: 20,
            child: Container(
              height: 130,
              width: w - 20,
              // color: Colors.blue,
              child: ListTile(
                title: Text(
                  'Crowne Plaza \n Kochi, Kerala',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(right: 160, top: 10),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(144, 190, 190, 190)),
                    child: Center(
                      child: Text(
                        '8.4/8.5 Reviews',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        if (fav) {
                          fav = false;
                        } else {
                          fav = true;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: fav == true ? Colors.red : Colors.white,
                    )),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Expanded(
              child: Container(
                width: w,
                child: Column(
                  children: [
                    ListTile(
                      title: RatingBarIndicator(
                          rating: 4,
                          itemCount: 5,
                          itemSize: 30,
                          unratedColor: Colors.grey,
                          itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.purple,
                              )),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Text(
                            '8 Km to Lulu Mall',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 90, 90, 90)),
                          )
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '\$200',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                          Text(
                            "/ per night",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.purple,
                      minWidth: 300,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('Book Now',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Crowne Plaza Kochi',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Nestled by Vembanad Lake, Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers. Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel features 269 spacious rooms, versatile meeting spaces, and diverse dining options. The well-appointed rooms offer scenic views of the backwaters or cityscape, complemented by 24-hour in-room dining and indulgent spa and salon services.Guests can enjoy various dining options available throughout the day, including fine dining and specialty cuisine at on-site restaurants such as Aroma, Mosaic, Skygrill, and Zoka. Crowne Plaza Kochi is an excellent venue for corporate and social events, providing fully equipped meeting rooms with advanced technology and versatile indoor and outdoor spaces suitable for different occasions. The pillarless ballroom can accommodate up to 600 guests in a theater-style arrangement. Additionally, there is a Backwater Pavilion capable of hosting grand events or wedding ceremonies for up to 2000 guests in a tranquil waterfront setting.',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
    );
  }
}
