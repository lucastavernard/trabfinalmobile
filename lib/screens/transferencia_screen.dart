import 'package:flutter/material.dart';

class TransferenciaScreen extends StatelessWidget {
  static const routeName = '/transferencia';

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferência')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Valor da Transferência'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/confirmacao',
                  arguments: _controller.text,
                );
              },
              child: Text('Transferir'),
            ),
          ],
        ),
      ),
    );
  }
}
