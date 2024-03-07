import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

import '../../../models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
  fetchAllNotes(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
     List<NoteModel> notes= noteBox.values.toList();
      emit(NoteSucces(notes));
    } catch (e) {
      emit(NoteFaliure(e.toString()));
    }
  }
}
