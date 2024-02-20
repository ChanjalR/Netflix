import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) => _widgetList[index],
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: _widgetList.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: whiteText,
        ),
        SizeWidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imagelist = [
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    //------------------------------------------
    final size = MediaQuery.of(context).size;
    //--for to mesure the width of the device for creating a container for insert an image

    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizeHeight,
        const Text(
          textAlign: TextAlign.center,
          'We will download a personalised selection of\nmovies and shows for you sp there is\nalways something on your\ndevice',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          // color: whiteButton,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.39,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidget(
                imagelist: imagelist[0],
                margin: const EdgeInsets.only(left: 150, bottom: 40),
                angle: 20,
              ),
              DownloadsImageWidget(
                imagelist: imagelist[1],
                margin: const EdgeInsets.only(right: 150, bottom: 40),
                angle: -20,
              ),
              DownloadsImageWidget(
                imagelist: imagelist[2],
                margin: const EdgeInsets.only(left: 0, bottom: 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
  });

  final double angle;
  final String imagelist;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.55,
        // color: Colors.black,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              imagelist,
            ),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: blueButton,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: whiteText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizeHeight,
        MaterialButton(
          color: whiteButton,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: blackText, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
