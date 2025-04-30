import 'package:flutter/material.dart';
import 'package:ostad_batch_10/flutter_class_1.dart';
import 'package:ostad_batch_10/gridV.dart';
import 'package:ostad_batch_10/listview.dart';

import 'navi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'asset/YT.png',
              height: 250,
              width: 250,
            ),
            Text('Login with your phone and password'),
            SizedBox(
              height: 20,
            ),
            Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Phone Number'),
                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length <= 6) {
                            return 'Password must be at least 6 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: 300,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Login Successful')),

                                  );
                                }

                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Navi(name: phoneController.text,)),
                                // );


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Navi(name:'ytujt',)),
                                );

                              },
                              child: Text('Login'))),

                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListV()),
                        );
                      }, child: Text('List')),


                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GridV()),
                        );
                      }, child: Text('Grid')),
                    ]))
          ],
        )),
      ),
    );
  }
}
