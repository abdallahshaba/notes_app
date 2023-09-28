import 'package:flutter/cupertino.dart';
import 'package:note_app2/widgets/custom_button.dart';
import 'package:note_app2/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
