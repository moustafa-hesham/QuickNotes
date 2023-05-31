import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quick_notes/views/widgets/add_note_bottomsheet.dart';

import 'package:quick_notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
