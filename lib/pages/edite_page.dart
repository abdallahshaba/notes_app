import 'package:flutter/material.dart';
import 'package:note_app2/widgets/edit_body.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditBody() ,
    );
  }
}