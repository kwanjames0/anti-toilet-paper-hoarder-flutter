import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnePaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(139.0, 345.0),
      child: Container(
//        margin: EdgeInsets.only(right: 20),
        width: 150.0,
        height: 148.0,
        decoration: BoxDecoration(
            color: const Color(0xfff3f3f5),
            border: Border.all(width: 1.0, color: const Color(0xff707070))
        ),
      ),
    );
  }
}


class ToiletPaper extends StatefulWidget {
  ToiletPaper({Key key}) : super(key: key);

  @override
  _ToiletPaper createState() => _ToiletPaper();
}


class _ToiletPaper extends State<ToiletPaper> {

  final items = List<String>.generate(200, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF81d4fa),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(221.0, 104.0),
            child: Container(
              width: 66.0,
              height: 153.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(33.0, 76.5)),
                color: const Color(0xfff3f3f5),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(106.0, 104.0),
            child: Container(
              width: 148.0,
              height: 153.0,
              decoration: BoxDecoration(
                color: const Color(0xfff3f3f5),
                border: Border.all(width: 1.0, color: const Color(0xfff3f3f5)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(73.0, 104.0),
            child: Container(
              width: 66.0,
              height: 153.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(33.0, 76.5)),
                color: const Color(0xffcccccc),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(106.5, 104.5),
            child: SvgPicture.string(
              _svg_1jx7w7,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 197.0),
            child: Container(
              width: 148.0,
              height: 148.0,
              decoration: BoxDecoration(
                color: const Color(0xfff3f3f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(139.5, 196.5),
            child: SvgPicture.string(
              _svg_remjr5,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 151.0),
            child: Container(
              width: 28.0,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(14.0, 28.0)),
                color: const Color(0xff5e5e5e),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(92.0, 151.0),
            child: Container(
              width: 24.0,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(12.0, 28.0)),
                color: const Color(0xff818286),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(139.5, 344.5),
            child: SvgPicture.string(
              _svg_sxkzvg,
              allowDrawingOutsideViewBox: true,
            ),
          ),
//          ListView(
//            children: <Widget>[
//              OnePaper()
//            ],
//          )
//          ,
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              final item = items[index];

              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("+1 Toilet Paper Used")));
                },
                background: Container(color: Color(0xFF81d4fa)),
                child:  OnePaper(),
              );
            },
          )
        ],
      ),
    );
  }
}

const String _svg_1jx7w7 =
    '<svg viewBox="106.5 104.5 153.0 153.0" ><path transform="translate(106.5, 104.5)" d="M 0 0 L 153 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(106.5, 257.5)" d="M 0 0 L 148 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_remjr5 =
    '<svg viewBox="139.5 196.5 148.0 148.0" ><path transform="translate(139.5, 196.5)" d="M 0 0 L 0 148" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(139.5, 196.5)" d="M 148 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(139.5, 344.5)" d="M 0 0 L 148 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(285.5, 196.5)" d="M 0 0 L 0 148" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sxkzvg =
    '<svg viewBox="139.5 344.5 148.0 1.0" ><path transform="translate(139.5, 344.5)" d="M 0 0 L 148 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

