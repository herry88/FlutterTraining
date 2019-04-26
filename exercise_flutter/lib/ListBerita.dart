import 'package:flutter/material.dart';

class Todo{
  final String kancil;
  Todo(this.kancil);
}

class ListBerita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(
        todos: List.generate(
          15,
              (i) => Todo('Kancil ke- $i',),
        ),
      ),
    );
  }
}


class TodoScreen  extends StatelessWidget {
  final List<Todo> todos;
  TodoScreen({Key key, @required this.todos}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List berita'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder:(context, index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: ListTile(
                  title: Text(todos[index].kancil),
//                  subtitle: Text(todos[index].detail),
//                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                      builder: (BuildContext context) =>
//                          DetailScreen(todo: todos[index]))),
                ),
              ),
            );
          }),
    );
  }
}



