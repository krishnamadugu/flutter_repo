import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/model/todo_model.dart';
part 'package:sample/bloc/todo_bloc_event.dart';

class TodoBloc extends Bloc<TodoBlocEvent, List<ToDoModel>> {
  TodoBloc() : super([]) {
    on<AddTodoEvent>((event, emit) {
      final newTodo = ToDoModel(
        name: event.name,
        createdAt: DateTime.now(),
      );

      final updatedList = [...state, newTodo];
      emit(updatedList);
    });
    on<DeleteTodoEvent>((event, emit) {
      final updatedList = [...state];
      updatedList.removeAt(event.index);
      emit(updatedList);
    });
  }
}
