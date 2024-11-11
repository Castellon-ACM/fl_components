import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';



class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Título de la tarjeta'),
          subtitle: Text('Texto por defecto'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: (){}, 
                child: const Text('Aceptar')
                ),
                TextButton(
                onPressed: (){}, 
                child: const Text('Cancelar')
                )
            ],
          )
      ],
      ),
    );
  }
}