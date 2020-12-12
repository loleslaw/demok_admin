import 'package:demok_admin/00_models/ankieta_header.dart';
import 'package:flutter/material.dart';

class AnkietaScreen extends StatelessWidget {
  const AnkietaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('To jest przykladowy tekst'),
        SizedBox(
          height: 600,
          child: ListView.builder(
              itemCount: demoAnkietaHeader.length,
              itemBuilder: (_, index) {
                AnkietaHeader header = demoAnkietaHeader[index];
                return ListTile(
                  title: Text(header.title),
                  subtitle: Text(header.description),
                );
              }),
        ),
      ],
    );
  }
}
