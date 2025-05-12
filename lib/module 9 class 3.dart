import 'package:flutter/material.dart';
import 'package:ostad_batch_10/widget/cityCard.dart';

class Module9Class3 extends StatefulWidget {
  const Module9Class3({super.key});

  @override
  State<Module9Class3> createState() => _Module9Class3State();
}

class _Module9Class3State extends State<Module9Class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('This is extra widget'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Fav',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'settings',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            cityCard(image: 'https://www.amny.com/wp-content/uploads/2022/08/GettyImages-523538287.jpg?quality=51', city: 'New York City ',),
            cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYV3EfsaWMn0aXHxhb5FuXZlJWEbIjUPwSyg&s', city: 'Dhaka',),
            cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReR9Uns1_rIDNosFY9z7YaB9lGyzOpfd8MXQ&s', city: 'maldives',),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Taufiqur Sabbir ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'bobo@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              )),
              ListTile(
                title: Text('Home'),
                onTap: () {},
              ),
              Divider(
                thickness: 1,
                color: Colors.blue,
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              Divider(
                thickness: 1,
                color: Colors.blue.shade200,
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
