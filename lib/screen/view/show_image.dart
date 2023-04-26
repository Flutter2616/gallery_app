import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/gallery_provider.dart';
import 'dash_screen.dart';

class Showimage extends StatefulWidget {
  const Showimage({Key? key}) : super(key: key);

  @override
  State<Showimage> createState() => _ShowimageState();
}

class _ShowimageState extends State<Showimage> {
  @override
  Widget build(BuildContext context) {
    int i=ModalRoute.of(context)!.settings.arguments as int;
    gf = Provider.of<Gallery_provider>(context, listen: false);
    gt = Provider.of<Gallery_provider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("${gt!.showindex}/${gf!.showlist.length}"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(onTap: () {
              gf!.delete(i);
            },child: Icon(Icons.delete,color: Colors.white)),
          ),
        ],
      ),
      body: Center(
        child: PageView.builder(itemBuilder: (context, index) {
          return Image.asset("${gf!.showlist[index]}");
        },controller: PageController(initialPage: i),itemCount: gt!.showlist.length,onPageChanged: (value) {
          gf!.showimageindex(i);
        },),
      ),
    );
  }
}
