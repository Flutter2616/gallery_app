import 'package:flutter/material.dart';
import 'package:gallery_app/screen/provider/gallery_provider.dart';
import 'package:gallery_app/screen/view/dash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Albumscreen extends StatefulWidget {
  const Albumscreen({Key? key}) : super(key: key);

  @override
  State<Albumscreen> createState() => _AlbumscreenState();
}

class _AlbumscreenState extends State<Albumscreen> {
  @override
  Widget build(BuildContext context) {
    gf = Provider.of<Gallery_provider>(context, listen: false);
    gt = Provider.of<Gallery_provider>(context, listen: true);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 3,mainAxisSpacing: 3),
          children: [
            InkWell(
              onTap: () {
                gf!.allphoto();
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade300,image: DecorationImage(image: AssetImage("${gf!.all[0]}"),fit: BoxFit.fill,opacity: 100)),
                alignment: Alignment.center,
                child: Text("All Photo",style: GoogleFonts.caveat(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
              ),
            ),
            InkWell(
              onTap: () {
                gf!.likephoto();
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade300,image: DecorationImage(image: AssetImage("${gf!.likeimg[6]}"),fit: BoxFit.fill,opacity: 100)),
                alignment: Alignment.center,
                child: Text("Like Photo",style: GoogleFonts.caveat(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
              ),
            ),
            InkWell(
              onTap: () {
                gf!.hd_wallpaper();
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade300,image: DecorationImage(image: AssetImage("${gf!.wallpepar[10]}"),fit: BoxFit.fill,opacity: 100)),
                alignment: Alignment.center,
                child: Text("HD wallpepar",style: GoogleFonts.caveat(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
