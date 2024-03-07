import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (data) {
              subTitle = data;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formatedDate = DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: formatedDate.toString(),
                        color: Colors.white.value);
                    BlocProvider.of<AddNoteCubitCubit>(context)
                        .addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
