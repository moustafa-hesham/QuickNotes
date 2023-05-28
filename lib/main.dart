import 'package:flutter/material.dart';
import 'package:quick_notes/views/notes.view.dart';

void main() {
  runApp(const QuickNotes());
}

class QuickNotes extends StatelessWidget {
  const QuickNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
