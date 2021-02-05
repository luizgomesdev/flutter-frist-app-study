import 'package:Flutter/components/CustomSwitcher.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(64),
                child: Image.network(
                    'https://instagram.fplu20-1.fna.fbcdn.net/v/t51.2885-15/e35/s480x480/90430506_138850567570583_2352782089693074779_n.jpg?_nc_ht=instagram.fplu20-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=XiQmh3nbkFMAX8zHgY5&tp=1&oh=9fa5b1795fbc7507ad92b2e3a6337c69&oe=604952E8'),
              ),
              accountName: Text('Luiz Gomes'),
              accountEmail: Text('luiz.gomes@toroinvestimentosl.com.br'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de início'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitcher()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 32,
            ),
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 24.0),
            ),
            Container(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
            print(counter);
          });
        },
      ),
    );
  }
}
