import 'package:flutter/material.dart';
import 'package:gallery_app/screen/view/dash_screen.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    gf = Provider.of<Gallery_provider>(context, listen: false);
    gt = Provider.of<Gallery_provider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3,),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'img',arguments: index);
                },
                child: Container(
                  width: 140,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${gf!.showlist[index]}"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15), color: Colors.red),
                ),
              );
            },
            itemCount: gt!.showlist.length,
            physics: BouncingScrollPhysics()),
      ),
    );
  }
}
