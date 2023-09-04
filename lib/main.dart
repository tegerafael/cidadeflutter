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
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
              SizedBox(
                width: 120,
                height: 80,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Facebook")
                      ],
                    )),
              ),
              SizedBox(
                width: 120,
                height: 80,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Endereço")
                      ],
                    )),
              ),
              SizedBox(
                width: 125,
                height: 80,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Compartilhar")
                      ],
                    )),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
            child: Text(
              "Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 226ª mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
