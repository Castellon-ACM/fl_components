import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const["Targaryen","Stark","Lannister","Baratheon"];
  
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(itemBuilder: (context, index) =>ListTile(
            leading: const Icon(Icons.arrow_back),
            title: Text(options[index]),
          ), 
      separatorBuilder: (context, index) => const Divider(), 
      itemCount: options.length)
    );
  }
}