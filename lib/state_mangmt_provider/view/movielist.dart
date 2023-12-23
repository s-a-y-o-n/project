import 'package:flutter/material.dart';
import 'package:project/state_mangmt_provider/provider/movie_provider.dart';
import 'package:project/state_mangmt_provider/view/wishlist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<Movieprovider>(
    create: (context) => Movieprovider(),
    child: MaterialApp(
      home: Movielist(),
    ),
  ));
}

class Movielist extends StatelessWidget {
  const Movielist({super.key});

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<Movieprovider>().movies;
    var wishlist = context.watch<Movieprovider>().wishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Wishlist()));
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              label: Text('Wishlist ${wishlist.length}')),
          Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(movies[index].title),
                        subtitle: Text(movies[index].time),
                        trailing: IconButton(
                            onPressed: () {
                              if (!wishlist.contains(movies[index])) {
                                context
                                    .read<Movieprovider>()
                                    .addwishlist(movies[index]);
                              } else {
                                context
                                    .read<Movieprovider>()
                                    .removewishlist(movies[index]);
                              }
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: wishlist.contains(movies[index])
                                  ? Colors.red
                                  : Colors.grey,
                            )),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
