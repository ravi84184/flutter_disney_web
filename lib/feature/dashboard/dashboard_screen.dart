import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_disney_web/feature/dashboard/widgets/app_bar_widget.dart';
import 'package:flutter_disney_web/utils/app_image.dart';

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
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  Expanded(
                    child: Container(
                      // color: const Color(0xff121212),
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (var model in ['', '', '', '', '']) ...[
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            AppImage.mov4,
                                            height: 250,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Container(
                                            height: 250,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xFF192037)
                                                        .withOpacity(0.3),
                                                    const Color(0xFF131418),
                                                  ],
                                                  begin: const FractionalOffset(
                                                      0.0, 0.0),
                                                  end: const FractionalOffset(
                                                      0.0, 1.0),
                                                  tileMode: TileMode.clamp),
                                            ),
                                          ),
                                          Positioned(
                                            right: 10,
                                            top: 5,
                                            child: Text(
                                              "Sci-Fi",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xffF9F9F9)
                                                      .withOpacity(0.7)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
