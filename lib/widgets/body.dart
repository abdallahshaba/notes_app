import 'package:flutter/material.dart';
import 'package:note_app2/widgets/custom_appBar.dart';
import 'package:note_app2/widgets/custom_note_item.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
         CustomAppBar(
          text: 'Notes',
          icon: Icons.search,
         ),
         Expanded(
          child: ListViewBulilder())
        ],
      ),
    );
  }
}
class ListViewBulilder extends StatelessWidget {
  const ListViewBulilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context , index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: NoteItem(),
          );
        }
        ),
    );
  }
}
