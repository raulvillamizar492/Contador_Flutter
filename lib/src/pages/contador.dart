import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  @override
  _contadorState createState() => _contadorState();
}

class _contadorState extends State<contador> {
  final _estilo = TextStyle(fontSize: 30.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de clicks !!',
            style: _estilo,
          ),
          Text(
            '$_conteo',
            style: _estilo,
          )
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              _cero();
            }),
        Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              _disminuir();
            }),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _agregar();
            }),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo = _conteo + 1;
    });
  }

  void _disminuir() {
    setState(() {
      _conteo = _conteo - 1;
    });
  }

  void _cero() {
    setState(() {
      _conteo = _conteo * 0;
    });
  }
}
