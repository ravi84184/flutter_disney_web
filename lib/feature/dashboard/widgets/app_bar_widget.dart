import 'package:flutter/material.dart';
import 'package:flutter_disney_web/utils/app_image.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image.asset(AppImage.logo),
      ],
    );
  }
}
