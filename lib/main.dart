import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Bem-vindo ao meu App"),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              ListTile(
                title: Text("Teste"),
                onTap: () {},
              )
            ],
          ),
        ),
        body: Column(children: [
          Image(
            image: const AssetImage('assets/rio-ji-parana.jpg'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Row(
              children: [
                Text(
                  "Brasil",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
