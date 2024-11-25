import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ){
        return AlertDialog(
          title: const Text('Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(35)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error 404, share more information in https://www.milanuncios.com/cabras/cabras-530294037.htm'),
              SizedBox(height: 20,),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'))
          ],
        );
      }
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context) , 
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
        ),
    );
  }
}