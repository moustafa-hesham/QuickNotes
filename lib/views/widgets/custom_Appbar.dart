import 'package:flutter/material.dart';
import 'package:quick_notes/views/widgets/CustomIconButton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 70),
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomIconButton(
          icon: icon,
        )
      ],
    );
  }
}
