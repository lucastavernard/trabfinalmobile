import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Principal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cotacao');
              },
              child: Text('Cotação'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transferencia');
              },
              child: Text('Transferência'),
            ),
          ],
        ),
      ),
    );
  }
}
