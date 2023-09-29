import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app2/models/note_model.dart';
import 'package:note_app2/widgets/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
   
 
  addNote(NoteModel note)async{
  emit(AddNoteLoading());
  try {
  await Hive.box(kNoteBox).add(note);
  emit(AddNoteSuccess());
} catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
