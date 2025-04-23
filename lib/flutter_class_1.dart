import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home page'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Text(
        //         'This is row',
        //         style: TextStyle(fontSize: 30, color: Colors.red),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         'This is row',
        //         style: TextStyle(fontSize: 30, color: Colors.red),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         'This is row',
        //         style: TextStyle(fontSize: 30, color: Colors.red),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         'This is row',
        //         style: TextStyle(fontSize: 30, color: Colors.red),
        //       ),
        //     ],
        //   ),
        // ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [

                    ],
                  ),
                ),
                InkWell(
                    onTap: (){

                    },
                    onDoubleTap: (){

                    },
                    onLongPress: (){

                    },
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {
                      print("Item deleted");
                    },
                    icon: Icon(Icons.delete)),
                TextButton(
                    onPressed: () {
                      print('Clicked me from text button');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  'This is column',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ],
            ),
          ),
        ));
  }
}