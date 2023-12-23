import 'package:flutter/material.dart';
import 'package:project/state_mangmt_provider/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlist = context.watch<Movieprovider>().wishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: ListView.builder(
          itemCount: wishlist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(wishlist[index].title),
                subtitle: Text(wishlist[index].time),
                trailing: IconButton(
                    onPressed: () {
                      context
                          .read<Movieprovider>()
                          .removewishlist(wishlist[index]);
                    },
                    icon: Icon(
                      Icons.delete,
                    )),
              ),
            );
          }),
    );
  }
}
