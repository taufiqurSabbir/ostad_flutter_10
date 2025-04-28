import 'package:flutter/material.dart';

class FlutterClass2 extends StatelessWidget {
  const FlutterClass2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      // backgroundColor: Colors.grey.withOpacity(0.7),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('class -2 '),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    print('button pressed');
                  },
                  child: Text(' Button')),
              SizedBox(
                height: 50,
                // width: double.infinity,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      print('button pressed');
                    },
                    child: Text(' Button')),
              ),
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              GestureDetector(
                  onTap: () {
                    print('text pressed');
                  },
                  child: Text('This is text')),
              SizedBox(
                height: 10,
              ),


              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 10),
                child: TextField(
                  controller: phoneController,

                  keyboardType: TextInputType.phone,
                  // obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your number',
                    labelText: 'Phone number',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder()

                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(onPressed: (){
               if(phoneController.text.isEmpty){
                 print('Please enter your number');
               }else if(phoneController.text.length < 11){
                  print('Please enter your correct number');
               }else{
                  print('Your number is ${phoneController.text}');

               }
              }, child: Text('Submit')),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(onPressed: (){
                phoneController.clear();
              }, child: Text('Clear')),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(5),
                width: 180,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.redAccent,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4, 40),
                        blurRadius: 15,
                      ),
                    ]),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'This is container',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'This is container',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'This is container',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('floating action button pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
