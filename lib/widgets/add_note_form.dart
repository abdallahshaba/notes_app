import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app2/cubit/cubit/add_note_cubit.dart';
import 'package:note_app2/models/note_model.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  String? caption , content ;
 final GlobalKey<FormState> formKey = GlobalKey();
 AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children:  [
           const SizedBox(
              height: 36,
            ),
            CustomTextField(
              onSaved: (data) {
                caption = data ;
              },
              hint: 'Enter Caption',
            ),
           const SizedBox(height: 25,),
            CustomTextField(
              onSaved: (data) {
                content = data ;
              },
              hint: 'Content',
              maxLines: 5,
            ),
           const SizedBox(height: 100,),
            CustomButton(
            onTap: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
           }  
              else{
                autovalidateMode = AutovalidateMode.always ;
                setState(() {});
              }
            },
           ),
           const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
