import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://wallpapers.com/images/featured/juego-de-tronos-92acb30ilmkjbmu9.jpg'),
            )
        ],
      ),
    );
  }
}