import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizeWidth,
        Text(
          title,
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(Icons.cast, color: Colors.white,size: 30,),
        SizeWidth,
        Container(
          color: Colors.blue,
          width: 30,
          height: 30,
        ),
        SizeWidth,
      ],
    );
  }
}
