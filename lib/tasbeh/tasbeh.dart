import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Tasbeh(),
    );
  }
}

// ignore: must_be_immutable
class Tasbeh extends StatefulWidget {
  String? title;
  int _sanoq = 0;
  String zikr = """بسملة
𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡""";
  int _loop = 0;
  Tasbeh({this.title});

  @override // 1
  State<StatefulWidget> createState() {
    return _TasbehState();
  }
}

//2

class _TasbehState extends State<Tasbeh> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(7),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 50),
                height: 80.0,
                width: 410.0,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "تَسْبِيح‎ ",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _kamaytir();
                          });
                        },
                        icon: Icon(Icons.restart_alt),
                        color: Colors.black),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 20),
                      alignment: Alignment.center,
                      height: 27.0,
                      width: 240.0,
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        "Return Number: ${widget._loop}",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // ORTTIRMA UCHUN BUTTON

                          Text(
                            "☪  ${widget._sanoq}",
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.bold),
                          ),

                          Text(
                            "${widget.zikr}",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(left: 300, top: 10),
                    //   child: IconButton(
                    //     onPressed: () {
                    //       setState(() {
                    //         _kamaytir();
                    //       });
                    //     },
                    //     icon: Icon(Icons.restart_alt),
                    //     color: Colors.black
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/bismillah.png",
                                // height: 400,
                                width: 150,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 359.0,
                                width: 378.0,
                                child: Text(
                                  "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاواتِ وَالأَرْضَ وَلاَ يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ\n\n   Allahu laaa ilaaha illaa huwal haiyul qai-yoom * laa taakhuzuhoo sinatunw wa laa nawm * lahoo maa fissamaawaati wa maa fil ard * man zallazee yashfa’u indahooo illaa be iznih * ya’lamu maa baina aideehim wa maa khalfahum * wa laa yuheetoona beshai ‘immin ‘ilmihee illa be maa shaaaa * wasi’a kursiyyuhus samaa waati wal arda * wa la ya’ooduho hifzuhumaa wa huwal aliyyul ‘azeem",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.all(Radius.circular(30)),
                          //     color: Colors.green),

                          IconButton(
                            onPressed: () {
                              setState(() {
                                _orttir();
                              });
                            },
                            icon: Icon(
                              Icons.fingerprint,
                              color: Colors.grey,
                            ),
                            hoverColor: Colors.black,
                            highlightColor: Colors.purpleAccent,
                            iconSize: 65.0,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40, right: 180),
                          child: Text(
                            "𝒃𝒚 𝑫𝒆𝒗𝒆𝒍𝒐𝒑𝒆𝒓 𝑨𝒍𝒊𝒋𝒐𝒏 𝑿𝒖𝒓𝒔𝒉𝒆𝒕𝒐𝒗",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          color: Colors.purpleAccent,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _orttir() {
    widget._sanoq += 1;
    if (widget._sanoq <= 33) {
      widget.zikr = """سبحان الله
𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡""";
    } else if (widget._sanoq <= 66) {
      widget.zikr = """الحمد لله
𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡""";
    } else if (widget._sanoq <= 99) {
      widget.zikr = """الله أكبر
𝐀𝐥𝐥𝐚𝐡 𝐡𝐮 𝐚𝐤𝐛𝐚𝐫""";
    } else {
      widget._loop += 1;
      widget._sanoq = 0;
      widget.zikr = """بسملة
𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡""";
    }
  }

  void _kamaytir() {
    if (widget._sanoq != 0) {
      widget._sanoq = 0;
      widget.zikr = """بسملة
𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡""";
    }
  }
}
