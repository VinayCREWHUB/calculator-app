import 'package:flutter/material.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody(
      {super.key, required this.mobilebody, required this.desktopbody});
  final Widget mobilebody;
  final Widget desktopbody;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilebody;
        } else {
          return desktopbody;
        }
      },
    );
  }
}
