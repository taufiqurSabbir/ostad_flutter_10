import 'package:flutter/material.dart';
import 'package:ostad_batch_10/flutter_class_1.dart';

class Navi extends StatelessWidget {
  final String  name;
  final String  ? address;
  const Navi({super.key, required this.name, this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(name ?? '',style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    }, child: Text('Home')),

                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Back')),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
