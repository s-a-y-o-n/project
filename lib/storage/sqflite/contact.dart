import 'package:flutter/material.dart';
import 'package:project/storage/sqflite/dboperation.dart';

void main() {
  runApp(MaterialApp(
    home: Sqflite_contact(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sqflite_contact extends StatefulWidget {
  const Sqflite_contact({super.key});

  @override
  State<Sqflite_contact> createState() => _Sqflite_contactState();
}

class _Sqflite_contactState extends State<Sqflite_contact> {
  final name_ctrl = TextEditingController();
  final phone_ctrl = TextEditingController();
  var isloading = true;
  List<Map<String, dynamic>> contacts = [];
  @override
  void initState() {
    loaddata();
    super.initState();
  }

  void loaddata() async {
    final data = await SQLHelper.readData();
    setState(() {
      contacts = data;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CONTACTS'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showsheet(null),
          child: const Icon(Icons.add),
        ),
        body: isloading
            ? Center(
                child: Text('No data'),
              )
            : ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(contacts[index]["name"]),
                      subtitle: Text(contacts[index]["phone"]),
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                showsheet(contacts[index]['id']);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deleteContact(contacts[index]['id']);
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  );
                },
              ));
  }

  void showsheet(int? id) async {
    if (id != null) {
      final data_from_id =
          contacts.firstWhere((element) => element['id'] == id);
      name_ctrl.text = data_from_id['name'];
      phone_ctrl.text = data_from_id['phone'];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: name_ctrl,
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  TextField(
                    controller: phone_ctrl,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(hintText: 'Phone No.'),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await createcontact();
                        } else {
                          await updateContact(id);
                        }
                        Navigator.of(context).pop();
                        name_ctrl.text = "";
                        phone_ctrl.text = "";
                      },
                      child: Text(id == null ? "Create" : "Update"))
                ],
              ),
            ),
          );
        });
  }

  Future<void> createcontact() async {
    await SQLHelper.create_contact(name_ctrl.text, phone_ctrl.text);
    loaddata();
  }

  Future<void> updateContact(int? id) async {
    await SQLHelper.updateContact(id, name_ctrl.text, phone_ctrl.text);
    loaddata();
  }

  void deleteContact(int? id) async {
    await SQLHelper.deleteData(id);
    loaddata();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Successfully Deleted")));
  }
}
