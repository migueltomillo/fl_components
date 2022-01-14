import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
        child:  Text('Mostrar alerta'),
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon (Icons.close),
        onPressed: (){

        },
        ),
    );
  }
}
