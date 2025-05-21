import 'package:flutter/material.dart';

import 'lifecyTest.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('From initState');
  }

  @override
  void dispose() {
    print('Dispose called');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('This this app bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LifeCycleTest()));
          },
          child: Text('Next page'),
        ),
      ),
    );
  }
}
