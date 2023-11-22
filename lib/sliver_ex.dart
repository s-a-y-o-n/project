import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Sliver_eg(),));
}
class Sliver_eg extends StatelessWidget {
  const Sliver_eg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 7,
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 30,
                color: Colors.white10,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search', prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            title: Text('Slivers'),

          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(100, (index) =>
            ListTile(
              leading: Text('sjbdhsdv'),
              trailing: Icon(Icons.send),
            )
          )))
        ],

      ),
    );
  }
}
