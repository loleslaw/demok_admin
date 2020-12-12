import 'package:flutter/material.dart';

class PetycjeScreen extends StatelessWidget {
  const PetycjeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: Text(
          'Petycje',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
