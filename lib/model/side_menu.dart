import 'package:flutter_disney_web/utils/app_image.dart';

class SideMenuModel {
  num id;
  String title = '';
  String icon = '';
  bool isSelected = true;
  bool isExpanded = false;
  List<SideMenuModel>? subMenuList;

  SideMenuModel(this.id, this.title, this.icon, {this.subMenuList});

  static List<SideMenuModel> list = [
    SideMenuModel(1, "Home", AppImage.icHome),
    SideMenuModel(2, "Playlists", AppImage.icPlaylists),
    SideMenuModel(3, "Watchlist", AppImage.icWatchlist),
    SideMenuModel(4, "Top Rated", AppImage.icTopRated),
    SideMenuModel(5, "Discover", AppImage.icDiscover, subMenuList: [
      SideMenuModel(5.1, "Action", ""),
      SideMenuModel(5.2, "Sci-Fi", ""),
      SideMenuModel(5.3, "Romance", ""),
      SideMenuModel(5.4, "Story ", ""),
      SideMenuModel(5.5, "Drama ", ""),
    ]),
    SideMenuModel(6, "Celebrities", AppImage.icDiscover),
  ];
}
