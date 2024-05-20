import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CotacaoScreen extends StatefulWidget {
  static const routeName = '/cotacao';

  @override
  _CotacaoScreenState createState() => _CotacaoScreenState();
}

class _CotacaoScreenState extends State<CotacaoScreen> {
  String _cotacao = 'Carregando...';

  @override
  void initState() {
    super.initState();
    fetchCotacao();
  }

  Future<void> fetchCotacao() async {
    final response = await http.get(Uri.parse('https://api.exchangerate-api.com/v4/latest/USD'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _cotacao = data['rates']['BRL'].toString();
      });
    } else {
      setState(() {
        _cotacao = 'Erro ao carregar cotação';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cotação')),
      body: Center(
        child: Text('USD to BRL: $_cotacao'),
      ),
    );
  }
}
