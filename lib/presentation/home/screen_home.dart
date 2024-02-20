import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 750,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(kImage), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(whiteButton)
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      color: blackText,
                      size: 30,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Play',
                        style: TextStyle(color: blackText,fontSize: 20,
                        fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ],
                
              ),
              
            ),
            SizeHeight,
          ],
        ),
        SizeHeight,
        const MainTitleCard(title: 'Released in past years'),
        SizeHeight,
        const MainTitleCard(
          title: 'Trending Now',
        ),
        SizeHeight,
       const NumberTitleCard(),
        SizeHeight,
       const MainTitleCard(
          title: 'Tense Dramas',
        ),
        SizeHeight,
       const MainTitleCard(
          title: 'South Indian cinemas',
        ),
        SizeHeight,
      ],
    ));
  }
}
