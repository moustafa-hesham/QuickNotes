import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_notes/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xFFFFcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 16),
                child: Text(
                  'Build your career with Moustafa hesham',
                  style: TextStyle(
                    color: Color(0xA6000000),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                'May 27, 2023',
                style: TextStyle(color: Color(0xA6000000), fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
