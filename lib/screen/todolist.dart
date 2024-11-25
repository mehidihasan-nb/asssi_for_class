// import 'package:ass/screen/add_new_screen.dart';
// import 'package:ass/screen/update.dart';
import 'package:flutter/material.dart';
class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}
//.......
class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('to do App'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('title'),
            subtitle: const Text('description'),
            leading: const Text('stutuse'),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {

                }, icon: const Icon(Icons.delete)),
                IconButton(onPressed: _changestutuse, icon: const Icon(Icons.edit)),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => update(),));
            },
          );
        },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => addnewscreen(),));
      },child: Icon(Icons.add),),
    );
  }

  _changestutuse(){
    showDialog(context: context,
      builder: (context) {
        return const AlertDialog(

          title: Text('chage stutuse'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('idle'),
              ),
              ListTile(
                title: Text('inprogess'),
              ),
              ListTile(
                title: Text('done'),
              ),
            ],
          ),
        );
        },);
    }
}
