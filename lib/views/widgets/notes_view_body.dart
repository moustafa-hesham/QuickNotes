import 'package:flutter/material.dart';

import 'custom_Appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
      child: Column(
        children: [
          const CustomAppBar(),
        ],
      ),
    );
  }
}
