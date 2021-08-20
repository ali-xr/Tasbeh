import 'package:flutter/material.dart';
import '../tasbeh/tasbeh2.dart';

// ignore: must_be_immutable
class TasFile extends StatefulWidget {
  var tem = Brightness.light;
  int s1 = 0;
  var ic1 = Icons.wb_sunny;
  Color rang1 = Colors.white;
  Color rang2 = Colors.lightBlue;
  Color rang3 = Colors.green;
  Color rang4 = Colors.black;

  TasFile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TasFileState();
  }
}

class TasFileState extends State<TasFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: widget.tem,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Container(
        //     margin: const EdgeInsets.only(left: 150),
        //     child: const Text(
        //       "تَسْبِيح‎",
        //       style: TextStyle(
        //         fontSize: 25.0,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              temOzgartir();
            });
          },
          child: Icon(
            widget.ic1,
            size: 30.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: TasbehTwo(widget.rang1, widget.rang2, widget.rang3,widget.rang4),
      ),
    );
  }

  void temOzgartir() {
    if (widget.s1 == 1) {
      widget.tem = Brightness.light;
      widget.ic1 = Icons.wb_sunny;
      widget.rang1 = Colors.white;
      widget.rang2 = Colors.lightBlue;
      widget.rang3 = Colors.green;
      widget.rang4 = Colors.black;
      widget.s1 -= 1;
    } else if (widget.s1 == 0) {
      widget.tem = Brightness.dark;
      widget.ic1 = Icons.brightness_3;
      widget.rang1 = Colors.black;
      widget.rang2 = Colors.white;
      widget.rang3 = Colors.amber;
      widget.rang4 = Colors.white;
      widget.s1 += 1;
    } else {
      widget.s1 = 1;
    }
  }
}
