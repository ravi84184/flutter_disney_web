import 'package:flutter_disney_web/utils/app_image.dart';

class SideMenuModel {
  int id;
  String title = '';
  String icon = '';
  bool isSelected = true;
  List<SideMenuModel>? subMenuList;

  SideMenuModel(this.id, this.title, this.icon, {this.subMenuList});

  static List<SideMenuModel> list = [
    SideMenuModel(1, "Home", AppImage.icHome),
    SideMenuModel(2, "Playlists", AppImage.icPlaylists),
    SideMenuModel(3, "Watchlist", AppImage.icWatchlist),
    SideMenuModel(4, "Top Rated", AppImage.icTopRated),
    SideMenuModel(5, "Discover", AppImage.icDiscover, subMenuList: [
      SideMenuModel(1, "Action", ""),
      SideMenuModel(2, "Sci-Fi", ""),
      SideMenuModel(3, "Romance", ""),
      SideMenuModel(4, "Story ", ""),
      SideMenuModel(5, "Drama ", ""),
    ]),
    SideMenuModel(6, "Celebrities", AppImage.icDiscover),
  ];
}
