import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_launch/widgets/viedo_list.dart';

class ScreenFastLuanch extends StatelessWidget {
  const ScreenFastLuanch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return VideoList(index: index,);
        }),
      ))
    );
  }
}