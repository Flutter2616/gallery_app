import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/screen/provider/gallery_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Gallery_provider? gf;
Gallery_provider? gt;

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  @override
  Widget build(BuildContext context) {
    gf = Provider.of<Gallery_provider>(context, listen: false);
    gt = Provider.of<Gallery_provider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Gallery",
              style: GoogleFonts.caveat(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 40)),
          actions: [
            Icon(Icons.search, color: Colors.black, size: 25),
            SizedBox(width: 10),
            Icon(Icons.camera_alt, color: Colors.pink.shade300, size: 25),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert, color: Colors.black, size: 25),
            ),
          ],elevation: 0),
      bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.photo_library, title: "Photos"),
            TabData(iconData: Icons.photo_album, title: "Albums"),
            TabData(iconData: Icons.favorite, title: "Favourite"),
          ],
          onTabChangedListener: (position) {
            gf!.bottombar(position);
          },
          circleColor: Colors.pink.shade300,
          activeIconColor: Colors.white,inactiveIconColor: Colors.grey.shade500,
          barBackgroundColor: Colors.white),
      body: gf!.screenlist[gt!.pageindex],
    );
  }
}
