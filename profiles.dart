import 'package:flutter/material.dart';


class Profile {
  final String uri, title,year,song;

  Profile({
    required this.uri,
    required this.title,
    required this.song,
    required this.year
  });
}

List <Profile> profiles = [
  Profile(
    song: '12',
    title: 'Billie Elish',
    uri: 'assets/1.png',
    year: '2015'
  ),
  Profile(
    song: '25',
    title: 'Chainsmokers',
    uri: 'assets/2.png',
    year: '2018'
  ),
  Profile(
    song: '16',
    title: 'Adele',
    uri: 'assets/3.png',
    year: '2012'
  )
];


class ProfContainter extends StatelessWidget {
  const ProfContainter({ Key? key, required this.profile,}) : super(key: key);
  final Profile profile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: Column(children: [
        Container(
          height: 130,
          width: 130,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            //border: Border.all(color: Colors.grey)
          ),
          child: Image.asset(profile.uri)
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
          child: Text(profile.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14))
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(children: [
            Text(profile.year, style: TextStyle(color: Colors.white70)),
            SizedBox(width: 19),
            Text(profile.song+' Songs',style: TextStyle(color: Colors.white70))
          ],)
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    )
    );
  }
}