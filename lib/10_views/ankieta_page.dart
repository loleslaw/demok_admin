import 'package:flutter/material.dart';

class AnkietaScreen extends StatelessWidget {
  const AnkietaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Text(
          'Ankieta page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
