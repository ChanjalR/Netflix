import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:stroke_text/stroke_text.dart';

class MainNumCard extends StatelessWidget {
  const MainNumCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/original/3LAnyV4dbzYKFDKLmc3NZTD1add.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 30,
          top: 40,
          child: StrokeText(text: '${index +1}',strokeWidth: 10,
          
          strokeColor: whiteText,
          textColor: blackText,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 150
          ),)
        ),
      ],
    );
  }
}
