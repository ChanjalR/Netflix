import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/Search/widgets/search_result.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.6),
                  radius: 30,
                  child: IconButton(
                    color: whiteButton,
                    iconSize: 28,
                      onPressed: () {}, icon: Icon(Icons.volume_off)),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://media.themoviedb.org/t/p/w300_and_h450_bestv2/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg'),
                      ),
                    ),
                    VideoActions(icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My list'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      child: Column(
        children: [
          Icon(icon,color: whiteButton,size: 30,),
          Text(title,style: TextStyle(fontSize: 16,color: whiteText),),
        ],
      ),
    );
  }
}
