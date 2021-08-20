import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasbehTwo extends StatefulWidget {
  int _sanoq = 0;
  int _loop = 0;
  String zikr = """𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة """;
  Color rang1;
  Color rang2;
  Color rang3;
  Color rang4;
  String image =
      "https://i.pinimg.com/736x/93/e6/ec/93e6ec599f27ceb4cf9cb34465c2f995.jpg";
  TasbehTwo(this.rang1, this.rang2, this.rang3, this.rang4,{Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return TasbehTwoState();
  }
}

class TasbehTwoState extends State<TasbehTwo> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(widget.image), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: widget.rang3,
            ),
            alignment: Alignment.center,
            height: height / 12,
            width: width / 1.5,
            child: Text(
              widget.zikr,
              style: TextStyle(
                color: widget.rang1,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            alignment: Alignment.center,
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget._sanoq + 2}",
              style: TextStyle(
                fontSize: 25.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget._sanoq + 1}",
              style: TextStyle(
                fontSize: 35.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang2,
            ),
            child: Text(
              "${widget._sanoq}",
              style: TextStyle(
                fontSize: 45.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget._sanoq - 1}",
              style: TextStyle(
                fontSize: 35.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            alignment: Alignment.center,
            height: 60.0,
            width: 60.0,
            //color: widget.rang3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget._sanoq - 2}",
              style: TextStyle(
                fontSize: 25.0,
                color: widget.rang1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20.0, left: 10.0),
                height: 40.0,
                width: 60.0,
                //color: widget.rang3,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _kamaytir();
                    });
                  },
                  child: Icon(
                    Icons.refresh,
                    color: widget.rang1,
                    size: 25.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: widget.rang4,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20.0,
                  right: 130.0,
                ),
                height: 80.0,
                width: 100.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _orttir();
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: widget.rang4,
                    size: 35.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: widget.rang1,
                    shape: const CircleBorder(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _orttir() {
    widget._sanoq += 1;
    if (widget._sanoq <= 33) {
      widget.zikr = "𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡 سبحان الله";
      widget.image =
          "https://www.fineartstorehouse.com/p/629/grand-mosque-sharq-kuwait-city-kuwait-13880221.jpg";
    } else if (widget._sanoq <= 66) {
      widget.zikr = "𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡 الحمد لله";
      widget.image = "https://pixy.org/src2/590/thumbs350/5907902.jpg";
    } else if (widget._sanoq <= 99) {
      widget.zikr = "𝐀𝐥𝐥𝐚𝐡 𝐡𝐮 𝐚𝐤𝐛𝐚𝐫 الله أكبر";
      widget.image =
          "https://i0.wp.com/www.mend.org.uk/wp-content/uploads/2020/06/Domes-mosque-Malaysia.jpg?fit=1600%2C1067&quality=90&strip=all&ssl=1";
    } else {
      widget._loop += 1;
      widget._sanoq = 0;
      widget.zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
  }

  void _kamaytir() {
    if (widget._sanoq != 0) {
      widget._sanoq = 0;
      widget.zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
  }
}
