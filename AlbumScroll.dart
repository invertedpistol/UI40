import 'package:flutter/material.dart';
import 'profiles.dart';

class AlbumScroll extends StatelessWidget {
  const AlbumScroll({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * 0.47,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' ALBUMS',
                style: TextStyle(color: Colors.grey, fontSize: 10)),
            SizedBox(height: 25),
            Container(
              width: size.width,
              height: size.width,
              child: ListView.builder(
                itemBuilder: (context, index) => ProfContainter(
                  profile: profiles[index],
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                shrinkWrap: true,
              ),
            ),
          ],
        ));
  }
}
