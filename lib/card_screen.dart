import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_card_type_1.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          Card(
            child: Column(
              children: const[
                CustomCardType1(),
                SizedBox(height: 10),
                CustomCardType2(name:'Hola',imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/c/ca/View_Ilha_Grande.JPG',),
                SizedBox(height: 10),
                CustomCardType2(name:'',imageUrl: 'https://www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg',),
                SizedBox(height: 10),
                CustomCardType2(name:'',imageUrl: 'https://www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg',),
                SizedBox(height: 100),
              ],
            ),
          )

        ],
      )
    );
  }
}
