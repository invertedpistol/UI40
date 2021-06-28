import 'package:flutter/material.dart';
import 'package:ui40/constants.dart';
import 'AlbumScroll.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Gradient(size: size),
            ButtonAndTexts(size: size),
            AlbumScroll(size: size),
          ],
        ),
        Container(height: 10, color: colorBottom),
        Container(
            height: 2,
            child: Row(
              children: [
                Container(
                  width: size.width / 2,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [buttonLeft, buttonRight])),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            )),
        MusicPlayerBottom(size: size)
      ],
    );
  }
}

class MusicPlayerBottom extends StatelessWidget {
  const MusicPlayerBottom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: 60,
        color: color2,
        child: Row(
          children: [
            SizedBox(width: 20),
            Column(
              children: [
                SizedBox(height: 11),
                Text('Goosebumps',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                Text('Travic Scott',
                    style: TextStyle(color: Colors.white70, fontSize: 12))
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            SizedBox(width: 150),
            Icon(Icons.pause, color: Colors.white),
            SizedBox(width: 20),
            Icon(Icons.play_arrow, color: Colors.white),
          ],
        ));
  }
}

class ButtonAndTexts extends StatelessWidget {
  const ButtonAndTexts({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * 0.3,
        child: Column(children: <Widget>[
          Text('Ellie Baker',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
            width: size.width,
          ),
          Text('40 Million Listeners',
              style: TextStyle(color: Colors.grey, fontSize: 10)),
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [buttonLeft, buttonRight],
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  width: size.width * 0.25,
                  height: 30,
                  child: Center(
                      child: Text('SHUFFLE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              letterSpacing: 2)))),
              SizedBox(width: 20),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: buttonRight),
                      borderRadius: BorderRadius.circular(15)),
                  width: size.width * 0.25,
                  height: 30,
                  child: Center(
                      child: Text('FOLLOW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              letterSpacing: 2))))
            ],
          )
        ]));
  }
}

class Gradient extends StatelessWidget {
  const Gradient({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorTop, colorBottom],
              begin: Alignment.topCenter,
              end: AlignmentDirectional.bottomCenter,
              stops: [0.2, 0.6])),
    );
  }
}

