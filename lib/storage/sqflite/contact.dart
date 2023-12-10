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
    );
  }

  void showsheet(int? id) async {
    if (id == null) {
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
                            // await updatecontact();
                          }
                        },
                        child: Text(id == null ? "Create" : "Update"))
                  ],
                ),
              ),
            );
          });
    }
  }

  Future<void> createcontact() async {
    await SQLHelper.create_contact(name_ctrl.text, phone_ctrl.text);
  }
}
