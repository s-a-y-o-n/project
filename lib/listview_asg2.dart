import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview_asg2(),
    debugShowCheckedModeBanner: false,
  ));
}
class Listview_asg2 extends StatelessWidget {

  var images=["https://th.bing.com/th/id/OIP.5FbRV3MojQWbg1qonc_uTAHaHa?pid=ImgDet&w=207&h=207&c=7",
  "https://th.bing.com/th/id/OIP.pSkPOvAc7HIo48xCpsOHjAHaEO?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/R.573da09e4f549ab4c1617849db280214?rik=9MhW0caGeCQhvA&riu=http%3a%2f%2flisttoday.org%2fwallpaper%2f2015%2f11%2flist-of-famous-places-7-free-wallpaper.jpg&ehk=7KCSYF9g%2bRgqSDfQNC36dzY%2bKamNWl3kKOr102t8Fv8%3d&risl=&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/OIP.ep5RWvKuUJzVMQMrAuuSqAHaFG?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/OIP.r4Kl4qnpY16gBqvDw5YisAHaEK?pid=ImgDet&w=728&h=410&rs=1",
  "https://th.bing.com/th/id/OIP.AEXmTVVIVXlY3VK8mqEqHAHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.92e1e44fd6d0657147d085b87a53df4b?rik=7MmPLTmgOpEQ3A&riu=http%3a%2f%2fandystravelblog.boardingarea.com%2fwp-content%2fuploads%2f2015%2f11%2fhong-kong-sunrise-2-1.jpg&ehk=k67pZvE3ujDQ%2f55nisq5nDPotcQhLEhe9d0wISH1z3Y%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.DUYzzUe1pFWfxmReu4aPXAHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.nPW3FuY6RNAxzDUyQmKw7AHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.FfoEPZj5PPtil5mpIN2x6wAAAA?pid=ImgDet&rs=1"
  ];
  var cities=["Delhi","Finland","London","Vancouver","New York","Aalborg","Hong Kong","Tokyo","São Paulo","Paris"];
  var country=["India","Europe","UK","Canada","USA","Denmark","China","Japan","Brazil","France"];
  var pop=["32.9 mill","5.54 mill","8.8 mill","2.6 mill","8.8 mill","9.1 mill","9.8 mill","34.3 mill","5.3 mill","21.2 mill"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Cities Around World', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.separated(itemBuilder: (context, index){
       return Card(color: Colors.orange,
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Image(image: NetworkImage(images[index]),width: 200,height: 120,fit: BoxFit.fill,),
             Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(cities[index],style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                 SizedBox(height: 10,),
                 Text(country[index], style: TextStyle(fontWeight: FontWeight.w700),),
                 Text('Population: ${pop[index]}')
               ],
             ),
             

           ],
          ),
       );

      }, separatorBuilder: (context, index){
        return SizedBox(height: 5,);


      },
          itemCount: 10),
    );
  }
}
