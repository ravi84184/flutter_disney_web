import 'package:flutter/material.dart';
import 'package:flutter_disney_web/model/side_menu.dart';

import '../../../utils/app_image.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  var subMenuList = SideMenuModel.list;
  var selectedId = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImage.logo,
            height: 60,
          ),
          const SizedBox(height: 30),
          for (var model in subMenuList) ...[
            InkWell(
              onTap: () {
                selectedId = model.id;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    if (model.icon != '') ...[
                      Image.asset(
                        model.icon,
                        color: selectedId != model.id
                            ? Colors.white
                            : Color(0xffF97642),
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(width: 10)
                    ],
                    Text(
                      model.title,
                      style: TextStyle(
                        color: selectedId != model.id
                            ? Colors.white
                            : Color(0xffF97642),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
