import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_hom_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key, required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: 200,
          maxWidth: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(15, (index) => MainHomCard(),),
          ),
        ),
        
      ],
    );
  }
}