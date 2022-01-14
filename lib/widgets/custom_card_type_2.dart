import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  // static name; 1:32 falta alert screen del 14/01/22
    final String name;

  final String imageUrl;
    
    const CustomCardType2({Key? key, 
    required this.imageUrl,
    required this.name,
    }) : super(key: key);
 @override
 Widget build(BuildContext context) {
   return Card(
     clipBehavior: Clip.antiAlias,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(18)
     ),
     elevation: 10,
     shadowColor: AppTheme.primary.withOpacity(0.5),
     child: Column(
       children: [

          FadeInImage(
           image: NetworkImage(imageUrl),
           placeholder: const AssetImage('assests/descarga.jpg'),
           width: double.infinity,
           height: 230,
           fit: BoxFit.cover,
           fadeInDuration: const Duration(milliseconds: 300),
         ),
          if(name !=null)
         Container(
           alignment: AlignmentDirectional.centerEnd,
           padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
          child:  Text(name),
         )
       ],
     )
   );
 }
}