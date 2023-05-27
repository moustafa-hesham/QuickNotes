import 'package:flutter/material.dart';
import 'package:quick_notes/views/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(height: 70),
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
