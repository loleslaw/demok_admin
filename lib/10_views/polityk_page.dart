import 'package:flutter/material.dart';

class PolitykScreen extends StatelessWidget {
  const PolitykScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: Text(
          'Polityk page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
