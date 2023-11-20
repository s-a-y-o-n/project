import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Staggered_grid1(),
  ));
}

class Staggered_grid1 extends StatelessWidget {
  const Staggered_grid1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/owlimg.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/owlimg.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/owlimg.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/owlimg.jpg"),
                        fit: BoxFit.fill)),
              ))
        ],
      ),
    ));
  }
}
