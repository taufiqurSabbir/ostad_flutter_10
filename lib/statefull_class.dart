import 'package:flutter/material.dart';
import 'package:ostad_batch_10/widget/cityCard.dart';

class SateFullClass extends StatefulWidget {
  const SateFullClass({super.key});

  @override
  State<SateFullClass> createState() => _SateFullClassState();
}

class _SateFullClassState extends State<SateFullClass> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Class"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 70,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 180,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });

                          print('counter: $counter');
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ))),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 180,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                          print('counter: $counter');
                        },
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cityCard(
                    image:
                        'https://www.amny.com/wp-content/uploads/2022/08/GettyImages-523538287.jpg?quality=51',
                    city: 'New York City ',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  cityCard(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYV3EfsaWMn0aXHxhb5FuXZlJWEbIjUPwSyg&s',
                    city: 'Dhaka',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  cityCard(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReR9Uns1_rIDNosFY9z7YaB9lGyzOpfd8MXQ&s',
                    city: 'maldives',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
