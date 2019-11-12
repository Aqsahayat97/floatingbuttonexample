import 'package:flutter/material.dart';
import 'package:floatingbuttonexample/example.dart';

void main() =>
    runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: Example()));

class Example extends StatefulWidget {
  _Example createState() => _Example();
}

class _Example extends State<Example> {
  @override
  Widget build(BuildContext context) {

    var childButtons = List<UnicornButton>( );
    childButtons.add( UnicornButton(
        hasLabel: true,
        labelText: "Choose one",
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon( Icons.train ),
          onPressed: () {},
        ) ) );

    childButtons.add( UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: "airplane",
            backgroundColor: Colors.greenAccent,
            mini: true,
            child: Icon( Icons.airplanemode_active ) ) ) );

    childButtons.add( UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: "car",
            backgroundColor: Colors.blueAccent,
            mini: true,
            child: Icon( Icons.directions_car ) ) ) );

    return Scaffold(
        backgroundColor: Colors.blueGrey,

        floatingActionButton: UnicornDialer(
            backgroundColor: Color.fromRGBO( 255, 255, 255, 0.6 ),
            parentButtonBackground: Colors.redAccent,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon( Icons.add ),
            childButtons: childButtons ),
        appBar: AppBar(
            title: Text('Floating Button')
        ),
        body: Center( child: RaisedButton(
          onPressed: () {
            setState( (
                ) {} );
          },
        ) ) );
  }
}