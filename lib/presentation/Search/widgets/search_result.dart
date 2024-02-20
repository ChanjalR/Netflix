import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';

const imageUrl = 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qJ2tW6WMUDux911r6m7haRef0WH.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextTitle(title: "Moves & TV"),
          SizeHeight,
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1/1.5,
              children: 
                List.generate(20, (index) {
                  return MainCard();
                })
            ),
          ),
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {

    // final screenwidth =MediaQuery.of(context).size.width;

    return Container(
      // width: screenwidth/2.8,
      // height: screenwidth/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7
        ),
        image: DecorationImage(image: NetworkImage(imageUrl),

        fit: BoxFit.cover),
      ),
    );
  }
}
