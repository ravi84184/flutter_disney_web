import 'package:flutter/material.dart';
import 'package:flutter_disney_web/feature/dashboard/widgets/app_bar_widget.dart';

import 'widgets/side_bar_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBarWidget(),
        ],
      ),
    );
  }
}
