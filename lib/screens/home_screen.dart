import 'package:calculator_app/screens/desktop_grid_screen.dart';
import 'package:calculator_app/screens/mobile_grid_screen.dart';
import 'package:calculator_app/widgets/responsive_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: currentWidth < 600 ? Colors.deepPurple : Colors.purple,
        body: const ResponsiveBody(
          desktopbody: DesktopGridScreen(),
          mobilebody: MobileGridScreen(),
        ));
  }
}
