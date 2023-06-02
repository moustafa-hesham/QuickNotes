import 'package:flutter/material.dart';
import 'package:quick_notes/views/widgets/CustomIconButton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
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
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
