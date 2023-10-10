import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textScreen extends StatefulWidget {
  textScreen({super.key});

  @override
  State<textScreen> createState() => _textScreenState();
}

class _textScreenState extends State<textScreen> {
  var item = TextEditingController();

  List<String> todoItems = [];

  void addItem() {
    todoItems.add(item.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                  flex: 2,
                  child: TextField(
                    controller: item,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Todo Item'),
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton.icon(
                  onPressed: addItem,
                  icon: Icon(Icons.add),
                  label: Text('ADD'),
                ),
              ),
            ]),
            Expanded(
              child: ListView.builder(
                  itemCount: todoItems.length,
                  itemBuilder: (_, index) =>
                      TodoItem(index + 1, todoItems[index])),
            )
          ],
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  TodoItem(this.index, this.item, {super.key});
  String item;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(item),
        leading: CircleAvatar(
          child: Text('$index'),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_forever,
              color: Colors.red,
            )),
      ),
    );
  }
}
