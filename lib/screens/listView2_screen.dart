import 'package:fl_components/screens/details_screen.dart';
import 'package:flutter/material.dart';


class Listview2Screen extends StatelessWidget {
  final options = const [
    {
      "name": "Targaryen",
      "image": "https://fbi.cults3d.com/uploaders/21836795/illustration-file/eeb0cf37-30c4-4ca0-9b59-945768789510/targaryen5.jpg",
      "description": "La Casa Targaryen es conocida por sus dragones y su lema: 'Fuego y Sangre'. Daenerys Targaryen es su última descendiente conocida.",
    },
    {
      "name": "Stark",
      "image": "https://wallpapers.com/images/hd/monochrome-house-stark-wolf-sigil-85uhf3amk3yxkqga.jpg",
      "description": "La Casa Stark gobierna el Norte desde Invernalia. Su lema es 'El Invierno se Acerca'. Eddard Stark es el honorable líder de la casa.",
    },
    {
      "name": "Lannister",
      "image": "https://lossietereinos.com/wp-content/uploads/2012/05/emblema-lannister.jpg",
       "description": "La Casa Lannister, rica y poderosa, reside en Roca Casterly. Su lema es 'Oye mi Rugido'. Tyrion Lannister es su astuto miembro.",
    },
    {
      "name": "Baratheon",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Baratheon_Flag.jpg/640px-Baratheon_Flag.jpg",
      "description": "La Casa Baratheon gobernó los Siete Reinos tras la rebelión. Su lema es 'Nuestra es la Furia'. Robert Baratheon fue su rey más famoso.",
    },
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final option = options[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(option["image"]!),
            ),
            title: Text(option["name"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    widgetTitle: option["name"]!,
                    widgetImage: option["image"]!,
                    widgetDescription: option["description"]!,
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}