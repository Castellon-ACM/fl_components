import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10,),
          CustomCardTipo2(imageUrl: 'https://wallpapers.com/images/featured/juego-de-tronos-92acb30ilmkjbmu9.jpg',titulo: 'Jhon Nieve',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2017/07/juego-tronos-caminantes-blancos.jpg',titulo: 'Caminante Blanco',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageUrl: 'https://cdn.avpasion.com/wp-content/uploads/2021/08/juego-de-tronos-hbo-max.jpg',titulo: 'Dragón',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageUrl: 'https://wallpapers.com/images/hd/tv-4k-game-of-thrones-daenerys-targaryen-wqihe6int4ndmw6b.jpg',titulo: 'Daenerys Targaryen',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2022/04/maisie-williams-como-arya-stark-juego-tronos-2674213.jpg',titulo: 'Arya Stark',),
          SizedBox(height: 10,),
        ],
      )
      );
  }
}

