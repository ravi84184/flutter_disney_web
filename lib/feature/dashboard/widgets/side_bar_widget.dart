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
  num selectedId = 1;
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    if (model.subMenuList != null) {
                      model.isExpanded = !model.isExpanded;
                    } else {
                      selectedId = model.id;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8),
                    child: Row(
                      children: [
                        if (model.icon != '') ...[
                          Image.asset(
                            model.icon,
                            color: selectedId != model.id
                                ? const Color(0xffF9F9F9).withOpacity(0.4)
                                : const Color(0xffF97642),
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 10)
                        ],
                        Text(
                          model.title,
                          style: TextStyle(
                            color: selectedId != model.id
                                ? const Color(0xffF9F9F9).withOpacity(0.4)
                                : const Color(0xffF97642),
                          ),
                        ),
                        const Spacer(),
                        if (model.subMenuList != null) ...[
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: const Color(0xffF9F9F9).withOpacity(0.4),
                          )
                        ]
                      ],
                    ),
                  ),
                ),
                if (model.subMenuList != null && model.isExpanded) ...[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1D1D1D),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        for (var subMenu in model.subMenuList ?? []) ...[
                          InkWell(
                            onTap: () {
                              selectedId = subMenu.id;
                              setState(() {});
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(8.0).copyWith(left: 40),
                              child: Text(
                                subMenu.title,
                                style: TextStyle(
                                  color: selectedId != subMenu.id
                                      ? const Color(0xffF9F9F9).withOpacity(0.4)
                                      : const Color(0xffF97642),
                                ),
                              ),
                            ),
                          )
                        ]
                      ],
                    ),
                  )
                ]
              ],
            )
          ],
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(radius: 20),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ravi Patel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      "ravipatel@gmail.com",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 10),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.logout,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
