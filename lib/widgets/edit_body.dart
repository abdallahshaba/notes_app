import 'package:flutter/material.dart';
import 'package:note_app2/widgets/custom_appBar.dart';
import 'package:note_app2/widgets/custom_textfield.dart';

class EditBody extends StatelessWidget {
  const EditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
              height: 40,
            ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            
          ),
          SizedBox(height: 30,),
          CustomTextField(hint: 'Caption'),
          SizedBox(height: 18,),
          CustomTextField(
            maxLines: 5,
            hint: 'Content'),
        ],
      ),
    );
  }
}