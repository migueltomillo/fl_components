import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
class HomeScreen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal gear',
    'Super smash',
    'Final fantasy',
  ];
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon,color: AppTheme.primary),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(
            //     builder: (context) => const ListView1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
