import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app2/cubit/cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            isLoading = true ;
           try {
            if(state is AddNoteSuccess){
              isLoading = false ;
              Navigator.pop(context);
            }
            else if(state is AddNoteFailure){
              isLoading = false ;
              print('Failed  ${state.errorMessage}');
            }
          } catch (e) {
          }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: isLoading,
              child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}
