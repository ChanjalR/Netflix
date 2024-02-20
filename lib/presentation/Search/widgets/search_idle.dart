import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';

const imageUrlList =
    'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/jXJxMcVoEuXzym3vFnjqDW4ifo6.jpg';

class SearchIdleWidget extends StatelessWidget {
 const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearch(),
            separatorBuilder: (context, index) => SizeHeight22,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}



class TopSearch extends StatelessWidget {
  const TopSearch({super.key});

  @override
  Widget build(BuildContext context) {
    //--------Screeenwidth accessing------------
    final screenwidth = MediaQuery.of(context).size.width;
    //--------Screeenwidth accessing------------
    return Row(
      children: [
        Container(
          width: screenwidth / 2.6,
          height: 90,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrlList), fit: BoxFit.cover)),
        ),
        SizeWidth,
       const Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
       const Icon(Icons.play_circle_outline,color: whiteButton,size: 40,),
      ],
    );
  }
}
