import 'package:bloc_todo/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  TextEditingController todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
              controller: todoTitleController,
              decoration: const InputDecoration(
                  hintText: 'Title', border: OutlineInputBorder())),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<TodoCubit>(context)
                    .addTodo(todoTitleController.text.trim());

                Navigator.of(context).pop();
              },
              child: const Text('ADD'))
        ],
      ),
    );
  }
}
