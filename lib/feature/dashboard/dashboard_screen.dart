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
      backgroundColor: const Color(0xff121212),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: SideBarWidget(),
          ),
          Expanded(
            flex: 4,
            child: Container(),
          )
        ],
      ),
    );
  }
}
