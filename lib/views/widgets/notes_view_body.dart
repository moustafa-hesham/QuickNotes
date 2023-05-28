import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_Appbar.dart';
import 'custom_note_card.dart';
import 'notes_Listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
      child: Column(
        children: [
          const CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
