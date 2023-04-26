import 'package:flutter/material.dart';
import 'package:gallery_app/screen/provider/gallery_provider.dart';
import 'package:gallery_app/screen/view/album_screen.dart';
import 'package:gallery_app/screen/view/dash_screen.dart';
import 'package:gallery_app/screen/view/photo_screen.dart';
import 'package:gallery_app/screen/view/likescreen.dart';
import 'package:gallery_app/screen/view/show_image.dart';
import 'package:gallery_app/screen/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Gallery_provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'img',
        routes: {
          '/':(context) => Splashscreen(),
          'dash':(context) => Dashscreen(),
          'photo':(context) => PhotoScreen(),
          'album':(context) => Albumscreen(),
          'setting':(context) => Settingscreen(),
          'img':(context) => Showimage(),
        },
      ),
    ),
  );
}
