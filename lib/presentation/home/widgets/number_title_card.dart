
import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/main_num_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 TV Shows In India Today'),
        LimitedBox(
          maxHeight: 200,
          maxWidth: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              15,
              (index) =>  MainNumCard(index: index),
            ),
          ),
        ),
      ],
    );
  }
}