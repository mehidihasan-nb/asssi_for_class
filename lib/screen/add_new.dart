import 'package:flutter/material.dart';
class addnewscreen extends StatefulWidget {
  const addnewscreen({super.key});

  @override
  State<addnewscreen> createState() => _addnewscreenState();
}

class _addnewscreenState extends State<addnewscreen> {
  TextEditingController _textEditingController=TextEditingController();
  TextEditingController _twoEditingController=TextEditingController();
  GlobalKey<FormState> _globalKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' add new to do list'),
          backgroundColor: Colors.pink,
        ),
        body: Form(
            key: _globalKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _textEditingController,
                  validator: (String? value) {
                    if(value==null || value.trim().isEmpty){
                      return 'enter a value';
                    } return null;
                  },
                ),
                Divider(
                  height: 8,
                ),
                TextFormField(
                  controller: _twoEditingController,
                  validator: (String? value) {
                    if(value==null || value.trim().isEmpty){
                      return 'enter a value';
                    } return null;
                  },
                ),
                Divider(
                  height: 8,
                ),
                ElevatedButton(onPressed: () {
                  if(_globalKey.currentState!.validate()){
                    print('success');
                  }
                }, child: Text('Add'))
              ],
            )),
        );
    }
}
