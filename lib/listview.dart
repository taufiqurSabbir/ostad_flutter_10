import 'package:flutter/material.dart';

class ListV extends StatelessWidget {
  const ListV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
     body: ListView.builder(
       itemCount: 50,
       itemBuilder: (context,index){
         return Card(
           child: ListTile(
              leading: Icon(Icons.phone),
            trailing: Icon(Icons.delete),
            title: Text("Taufiq"),
             subtitle: Text("017929562 $index"),
           ),
         );
       },

     ),
    );
  }
}
