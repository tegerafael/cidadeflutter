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
                Container(
                  child: Row(children: [
                    Text(
                      'Brasil',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
                  child: Row(children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.blue,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  "Ji-Paraná, Rondônia",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 50, 0, 0),
            child: Row(children: [
              OutlinedButton(onPressed: () {}, child: Icon(Icons.facebook)),
              OutlinedButton(onPressed: () {}, child: Text('Olá')),
              OutlinedButton(onPressed: () {}, child: Text('Olá')),
            ]),
          ),
        ]),
      ),
    );
  }
}
