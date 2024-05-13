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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _menuItem('Movies'),
          _menuItem('Dramas'),
          _menuItem('Shows'),
          _menuItem('Podcasts'),
          const SizedBox(width: 100,),
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search here',
                hintStyle: const TextStyle(color: Color(0xff747474)),
                filled: true,
                contentPadding: const EdgeInsets.all(0),
                fillColor: const Color(0xff2C2C2C),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AppImage.icSearch,
                    height: 20,
                    width: 20,
                    color: const Color(0xff747474),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 25,
                  minHeight: 25,
                ),
              ),
            ),
          ),
          const SizedBox(width: 50,),
        
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xff2C2C2C),
              border: Border.all(
                color: const Color(0xff444444),
              ),
            ),
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(10),
            child: Image.asset(AppImage.icNotification),
          )
        ],
      ),
    );
  }

  Widget _menuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          Container(
            height: 2,
            width: 40,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
