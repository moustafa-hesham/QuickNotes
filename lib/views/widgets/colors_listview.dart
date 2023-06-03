import 'package:flutter/material.dart';

class CardsColor extends StatelessWidget {
  const CardsColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 36,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CardsColor();
          }),
    );
  }
}
