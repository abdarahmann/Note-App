import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Color(0xffFECD7E),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Note tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Text(
                  'Organize your daily tasks\n and write them here',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Text(
                'March,21,2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
