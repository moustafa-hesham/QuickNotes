import 'package:flutter/material.dart';
import 'package:quick_notes/views/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField()
        ],
      ),
    );
  }
}
