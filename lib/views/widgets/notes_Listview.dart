import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:quick_notes/cubits/read%20note%20cubit/read_note_cubit.dart';
import 'package:quick_notes/models/note_model.dart';

import 'custom_note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadNoteCubit>(context).notes!;
        return ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: const NoteCard(),
              );
            });
      },
    );
  }
}
