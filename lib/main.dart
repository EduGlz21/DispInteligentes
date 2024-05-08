import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return MaterialApp(
      home: DensidadResolucionScreen(
        devicePixelRatio: devicePixelRatio,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }
}

class DensidadResolucionScreen extends StatefulWidget {
  final double devicePixelRatio;
  final double screenWidth;
  final double screenHeight;

  const DensidadResolucionScreen({
    Key? key,
    required this.devicePixelRatio,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  _DensidadResolucionScreenState createState() =>
      _DensidadResolucionScreenState();
}

class _DensidadResolucionScreenState extends State<DensidadResolucionScreen> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Densidad y Resolución del Dispositivo'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _backgroundColor = _backgroundColor == Colors.white
                ? Colors.blueAccent
                : Colors.white;
          });
        },
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Densidad del Dispositivo:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  '${widget.devicePixelRatio.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Resolución de la Pantalla:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Ancho: ${widget.screenWidth.toStringAsFixed(0)} px',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Alto: ${widget.screenHeight.toStringAsFixed(0)} px',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
