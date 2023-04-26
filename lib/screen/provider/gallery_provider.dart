import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/screen/view/album_screen.dart';
import 'package:gallery_app/screen/view/photo_screen.dart';
import 'package:gallery_app/screen/view/likescreen.dart';

class Gallery_provider extends ChangeNotifier
{
  int pageindex=0;
  List<Widget> screenlist=[
    PhotoScreen(),
    Albumscreen(),
    Settingscreen()
  ];

  // List commonlist=[showlist,likeimg];
  List showlist=[
    "assets/img/img (1).jpg",
    "assets/img/img (2).jpg",
    "assets/img/img (3).jpg",
    "assets/img/img (4).jpg",
    "assets/img/img (5).jpg",
    "assets/img/img (6).jpg",
    "assets/img/img (7).jpg",
    "assets/img/img (8).jpg",
    "assets/img/img (9).jpg",
    "assets/img/img (10).jpg",
    "assets/like/1.jpg",
    "assets/like/2.jpg",
    "assets/like/3.jpg",
    "assets/like/4.jpg",
    "assets/like/5.jpg",
    "assets/like/6.jpg",
    "assets/like/7.jpg",
  ];
  List all=[
     "assets/img/img (1).jpg",
     "assets/img/img (2).jpg",
     "assets/img/img (3).jpg",
     "assets/img/img (4).jpg",
     "assets/img/img (5).jpg",
     "assets/img/img (6).jpg",
     "assets/img/img (7).jpg",
     "assets/img/img (8).jpg",
     "assets/img/img (9).jpg",
     "assets/img/img (10).jpg",
    "assets/like/1.jpg",
    "assets/like/2.jpg",
    "assets/like/3.jpg",
    "assets/like/4.jpg",
    "assets/like/5.jpg",
    "assets/like/6.jpg",
    "assets/like/7.jpg",
  ];
  List likeimg=[
    "assets/img/img (1).jpg",
    "assets/img/img (2).jpg",
    "assets/img/img (3).jpg",
    "assets/img/img (4).jpg",
    "assets/img/img (5).jpg",
    "assets/like/1.jpg",
    "assets/like/2.jpg",
    "assets/like/3.jpg",
    "assets/like/4.jpg",
    "assets/like/5.jpg",
  ];
  List wallpepar=[
    "assets/img/img (1).jpg",
    "assets/img/img (2).jpg",
    "assets/img/img (3).jpg",
    "assets/img/img (4).jpg",
    "assets/img/img (5).jpg",
    "assets/img/img (6).jpg",
    "assets/img/img (7).jpg",
    "assets/img/img (8).jpg",
    "assets/img/img (9).jpg",
    "assets/img/img (10).jpg",
    "assets/like/1.jpg",
    "assets/like/2.jpg",
    "assets/like/3.jpg",
    "assets/like/4.jpg",
    "assets/like/5.jpg",
    "assets/like/6.jpg",
    "assets/like/7.jpg",
  ];
  void bottombar(int index)
  {
    pageindex=index;
    notifyListeners();
  }

  void delete(int index)
  {
     showlist.removeAt(index);
     notifyListeners();
  }

  void allphoto() {
    showlist=all;
    pageindex=0;
    notifyListeners();
  }
  void likephoto() {
    showlist=likeimg;
    pageindex=0;
    notifyListeners();
  }
  void hd_wallpaper() {
    showlist=wallpepar;
    pageindex=0;
    notifyListeners();
  }

  int? showindex;
  void showimageindex(int index)
  {
    showindex=index;
    notifyListeners();
  }

}