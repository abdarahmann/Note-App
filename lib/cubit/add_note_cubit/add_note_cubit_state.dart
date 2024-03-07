part of 'add_note_cubit_cubit.dart';


abstract class AddNoteCubitState {}

 class AddNoteCubitInitial extends AddNoteCubitState {}

 class AddNoteInitial extends  AddNoteCubitState {}

 class AddNoteLoading extends  AddNoteCubitState {}

 class AddNoteSucces extends  AddNoteCubitState {}

 class AddNoteFaliure extends  AddNoteCubitState {
  final String errMessage;

  AddNoteFaliure(this.errMessage);
}