import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note)async {
     emit(AddNoteLoading());
    try {
     
      var noteBox = Hive.box(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSucces());
    } on Exception catch (e) {
      AddNoteFaliure(e.toString());
    }
  }
}
