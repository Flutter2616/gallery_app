import 'package:flutter/material.dart';
import 'package:gallery_app/screen/view/dash_screen.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({Key? key}) : super(key: key);

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    gf = Provider.of<Gallery_provider>(context, listen: false);
    gt = Provider.of<Gallery_provider>(context, listen: true);
    return Scaffold(
      body: Center(
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'img',arguments: index);
            },
            child: Container(
              width: 140,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${gf!.likeimg[index]}"),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
            ),
          );
        },
        itemCount: gt!.likeimg.length,
      )),
    );
  }
}
