import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quick_notes/models/note_model.dart';

import 'widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
