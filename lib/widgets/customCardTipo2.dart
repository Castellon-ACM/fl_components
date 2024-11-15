import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  final String imageUrl;
  final String? titulo;
  const CustomCardTipo2({super.key, required this.imageUrl, this.titulo});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
            FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            //height: 260,
            //fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 2000),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only( top: 10, bottom: 10, right: 20),
            child: 
            Text(titulo ?? 'Desconocido'))
        ],
      ),
    );
  }
}