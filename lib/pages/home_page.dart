import 'package:flutter/material.dart';
import '../widgets/add_note_buttom_sheet.dart';
import '../widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
             builder: (context){
              return const AddNoteBottomSheet();
             }
             );
          
        } , child: const Icon(Icons.add),
        ),
      body: const Body() ,
    );
  }
}


