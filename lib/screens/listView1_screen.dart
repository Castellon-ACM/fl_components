import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const["Targaryen","Stark","Lannister","Baratheon"];
  
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
         children: [
          ...options.map((e) => 
          ListTile(
            leading: const Icon(Icons.arrow_back),
            title: Text(e),
          ),).toList()
         ],
      ),
    );
  }
}