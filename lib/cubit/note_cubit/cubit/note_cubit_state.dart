part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

class NoteInitial extends NoteCubitState {}

class NoteLoading extends NoteCubitState {}

class NoteSucces extends NoteCubitState {
 final List<NoteModel> notes ;
  NoteSucces(this.notes);
}

class NoteFaliure extends NoteCubitState {
  final String errMessage;

  NoteFaliure(this.errMessage);
}
