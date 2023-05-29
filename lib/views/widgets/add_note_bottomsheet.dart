import 'package:flutter/material.dart';
import 'package:quick_notes/constants.dart';
import 'package:quick_notes/views/widgets/custom_textfield.dart';

import 'custom_buttom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'content', maxLines: 5),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
