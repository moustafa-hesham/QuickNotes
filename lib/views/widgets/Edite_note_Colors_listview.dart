import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_listview.dart';

class EditeNoteColorsList extends StatefulWidget {
  const EditeNoteColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteColorsList> createState() => _EditeNoteColorsListState();
}

class _EditeNoteColorsListState extends State<EditeNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: CardsColor(
                  color: kColors[index],
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
