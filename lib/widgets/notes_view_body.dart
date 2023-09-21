

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app2/widgets/custom_appBar.dart';
import 'package:note_app2/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
         CustomAppBar(),
         NoteItem(),
        ],
      ),
    );
  }
}
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomNoteItem();
  }
}