import 'package:flutter/material.dart';

class MainHomCard extends StatelessWidget {
  const MainHomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: NetworkImage(
              'https://image.tmdb.org/t/p/original/3LAnyV4dbzYKFDKLmc3NZTD1add.jpg'),
        ),
      ),
    );
  }
}
