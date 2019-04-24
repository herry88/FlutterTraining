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
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          DetailScreen(todo: todos[index]))),
                ),
              ),
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;
  DetailScreen({Key key, @required this.todo}) : super(key: key);
  // const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.judul),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          new Text(
            todo.judul,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          new Text(
            todo.detail,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
