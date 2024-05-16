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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                Expanded(
                  child: Container(
                    color: const Color(0xff121212),
                    // color: Colors.white,
                    child: ListView(
                      shrinkWrap: true,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height: 350,
                                      width: double.infinity,
                                      child: Image.asset(
                                        AppImage.move1,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      left: 20,
                                      child: Text(
                                        "Avenger",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffF97642),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 10),
                                        ),
                                        child: const Text(
                                          'Watch Now',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              for (var model in [
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                ''
                              ]) ...[
                                movieWidget(),
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
          )
        ],
      ),
    );
  }

  movieWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(AppImage.move1,
                height: 250, width: 200, fit: BoxFit.cover),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xFF192037).withOpacity(0.3),
                      const Color(0xFF131418),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
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
                    color: const Color(0xffF9F9F9).withOpacity(0.7)),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Movie Name",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffF9F9F9).withOpacity(0.7)),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
