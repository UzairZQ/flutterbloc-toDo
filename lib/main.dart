import 'package:bloc_todo/add_task_page.dart';
import 'package:bloc_todo/cubit/todo_cubit.dart';
import 'package:bloc_todo/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => const MyHomePage(title: 'ToDo with BloC'),
          '/add-todo': (_) => const AddTaskPage()
        },
        title: 'Todo with BloC',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
