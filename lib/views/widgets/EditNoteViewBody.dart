import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/cubits/read%20note%20cubit/read_note_cubit.dart';
import 'package:quick_notes/helper/showSnackbar.dart';
import 'package:quick_notes/models/note_model.dart';
import 'package:quick_notes/views/widgets/custom_Appbar.dart';
import 'package:quick_notes/views/widgets/custom_textfield.dart';

import 'Edite_note_Colors_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              showSnackBar(context, "Note edited successfully");
            },
            title: 'Edite Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(height: 24),
          EditeNoteColorsList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
