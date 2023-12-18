part of 'todo_bloc.dart';

sealed class TodoBlocEvent {}

class AddTodoEvent extends TodoBlocEvent {
  final String name;
  AddTodoEvent(this.name);
}

class DeleteTodoEvent extends TodoBlocEvent {
  final int index;
  DeleteTodoEvent(this.index);
}
