import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  void _addTask(){
    if(taskController.text.isNotEmpty){
      setState(() {
        _tasks.add(taskController.text);
        taskController.clear();
      });

    }
  }

  void _deleteTask(int index){
    setState(() {
      _tasks.removeAt(index);
    });
  }

  List<String> _tasks = [];
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Enter task',
                    border: OutlineInputBorder()
                  ),
                )),
                SizedBox(width: 10,),
                ElevatedButton(onPressed:_addTask, child: Text('Add'))
              ],
            ),
            Expanded(
              child: ListView.builder(

                  itemCount: _tasks.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text(_tasks[index]),
                        trailing: IconButton(
                          onPressed: ()=> _deleteTask(index),
                          icon: Icon(Icons.delete,color: Colors.red,),
                        ),
                      ),
                    );
                  } ),
            )
          ],
        ),
      ),
    );
  }
}
