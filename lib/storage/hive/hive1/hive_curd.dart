import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("todobox");
  runApp(MaterialApp(
    home: Hive_curd(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hive_curd extends StatefulWidget {
  const Hive_curd({super.key});

  @override
  State<Hive_curd> createState() => _Hive_curdState();
}

// ignore: camel_case_types
class _Hive_curdState extends State<Hive_curd> {
  final box1 = Hive.box('todobox');
  List<Map<String, dynamic>> task = [];
  final tname_ctrl = TextEditingController();
  final tcontent_ctrl = TextEditingController();
  @override
  void initState() {
    read_task();
    super.initState();
  }

  void read_task() {
    final task_from_hive = box1.keys.map((key) {
      final single_task =
          box1.get(key); //get singlle task corresponding to the key
      return {
        'id': key,
        'tname': single_task['taskname'],
        'tcont': single_task['taskcontent']
      };
    }).toList();
    setState(() {
      task = task_from_hive.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive'),
      ),
      body: task.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.task),
                    title: Text(task[index]['tname']),
                    subtitle: Text(task[index]['tcont']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              create_edit_task(task[index]['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              delete_task(task[index]['id']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          create_edit_task(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void create_edit_task(int? itemkey) {
    if (itemkey != null) {
      final current_task =
          task.firstWhere((element) => element['id'] == itemkey);

      tname_ctrl.text = current_task['tname'];
      tcontent_ctrl.text = current_task['tcont'];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                left: 15,
                right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: tname_ctrl,
                  decoration: InputDecoration(hintText: 'Task name'),
                ),
                TextField(
                  controller: tcontent_ctrl,
                  decoration: InputDecoration(hintText: 'Content'),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (itemkey == null) {
                        create_task({
                          "taskname": tname_ctrl.text.trim(),
                          "taskcontent": tcontent_ctrl.text.trim()
                        });
                      } else if (itemkey != null) {
                        edit_task(itemkey, {
                          "taskname": tname_ctrl.text.trim(),
                          "taskcontent": tcontent_ctrl.text.trim()
                        });
                      }
                      tname_ctrl.text = '';
                      tcontent_ctrl.text = '';
                      Navigator.of(context).pop();
                    },
                    child: Text(itemkey == null ? "Create task" : "Edit Task"))
              ],
            ),
          );
        });
  }

  Future<void> create_task(Map<String, String> newtask) async {
    await box1.add(newtask);
    read_task();
  }

  Future<void> edit_task(int itemkey, Map<String, String> editedtask) async {
    await box1.put(itemkey, editedtask);
    read_task();
  }

  Future<void> delete_task(int itemkey) async {
    await box1.delete(itemkey);
    read_task();
  }
}
