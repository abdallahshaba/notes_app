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
        child: Column(
          children:  [
            SizedBox(
              height: 36,
            ),
            CustomTextField(
              hint: 'Enter Caption',
            ),
            SizedBox(height: 25,),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 140,),
            CustomButton(),
             SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
