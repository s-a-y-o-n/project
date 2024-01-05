import 'package:flutter/material.dart';
import 'package:project/assignments/Sqflite/sql_function.dart';

class Admindash extends StatefulWidget {
  const Admindash({super.key});

  @override
  State<Admindash> createState() => _AdmindashState();
}

class _AdmindashState extends State<Admindash> {
  List<Map<String, dynamic>> users = [];
  @override
  void initState() {
    fetchallusers();
    super.initState();
  }

  void fetchallusers() async {
    var fetcheddata = await SQL_functions.fetchdata();
    setState(() {
      users = fetcheddata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Text('${users[index]["id"]}'),
                title: Text(users[index]["name"]),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${users[index]["phone"]}'),
                    Text(users[index]["email"])
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {
                      deleteuser(users[index]["id"]);
                    },
                    icon: Icon(Icons.delete)),
              ),
            );
          }),
    );
  }

  void deleteuser(int id) async {
    await SQL_functions.deleteuser(id);
    fetchallusers();
  }
}
