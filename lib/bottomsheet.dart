import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Bottomsheet(),
  ));
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(onLongPress: (){
          showSheet(context);    //this is just a user defined function, we can just write the function showModalBottomSheet() directly here.
        },
            child: Image.asset(
          "assets/icons/owlimg.jpg",
          height: 200,
          width: 200,
        )),
      ),
    );
  }
  showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Column(mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),

          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Download'),

          )
        ],
      );
    });
  }
}
