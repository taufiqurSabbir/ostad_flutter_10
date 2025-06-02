import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Module12Class3 extends StatefulWidget {
  const Module12Class3({super.key});

  @override
  State<Module12Class3> createState() => _Module12Class3State();
}

class _Module12Class3State extends State<Module12Class3> {
  List users = [];
  bool isloading = false;

  Future<void> fatchUsers() async {
    setState(() {
      isloading = true;
    });
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    headers: {
      'Accept' : 'application/json'
    }
    );
    setState(() {
      isloading =false;
    });
    log(response.body);

    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }else{
      throw Exception('Something wrong');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchUsers();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User list'),
      ),
      body:isloading ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: users.length,
          itemBuilder: (context,index){
          final user = users[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text(user['name'][0],style: TextStyle(color: Colors.white,fontSize: 28),),
              ),
              title: Text(user['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text('UserName: ${user['username']}',style: TextStyle(color: Colors.grey),),
                  Text('Email: ${user['email']}',style: TextStyle(color: Colors.grey),),
                  Text('phone ${user['phone']}',style: TextStyle(color: Colors.grey),),
                  Text('Website ${user['website']}',style: TextStyle(color: Colors.grey),),
                  Text('Address ${user['address']['street']} , ${user['address']['city']}',style: TextStyle(color: Colors.grey),),
                ],
              ),
            );
          }),
    );
  }
}



