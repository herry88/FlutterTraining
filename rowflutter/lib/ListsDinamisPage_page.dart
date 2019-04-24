import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class Todo {
  final String judul, detail;
  Todo(this.judul, this.detail);
}

class ListsDinamisPagePage extends StatelessWidget {
  // static const String routeName = "/listsDinamisPage";

  @override
  Widget build(BuildContext context) {
    // var _listsDinamisPageBloc = new ListsDinamisPageBloc();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(
        todos: List.generate(
          15,
          (i) => Todo('Judul ke- $i', 'Detail ke- $i'),
        ),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;
  TodoScreen({Key key, @required this.todos}) : super(key: key);
  // const TodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Berita'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                  child: ListTile(
                  title: Text(todos[index].judul),
                  subtitle: Text(todos[index].detail),
                ),
              ),
            );
          }),
    );
  }
}
