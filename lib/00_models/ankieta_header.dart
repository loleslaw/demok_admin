import 'dart:convert';

import 'package:flutter/material.dart';

class AnkietaHeader {
  String id;
  String title;
  String description;
  bool active;
  DateTimeRange dates;
  AnkietaHeader({
    this.id,
    this.title,
    this.description,
    this.active,
    this.dates,
  });

  AnkietaHeader copyWith({
    String id,
    String title,
    String description,
    String active,
    DateTimeRange dates,
  }) {
    return AnkietaHeader(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      active: active ?? this.active,
      dates: dates ?? this.dates,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'active': active,
      'dates': dates?.toString(),
    };
  }

  factory AnkietaHeader.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    String dates = map['dates'] ?? '';
    var parts = dates.replaceAll(' ', '').split('-');
    String sDate = parts[0];
    String eDate = parts[1];

    print('data od  $sDate, data do $eDate');

    return AnkietaHeader(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      active: map['active'],
      dates: DateTimeRange(start: null, end: null),
    );
  }

  String toJson() => json.encode(toMap());

  factory AnkietaHeader.fromJson(String source) =>
      AnkietaHeader.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AnkietaHeader(id: $id, title: $title, description: $description, active: $active, dates: $dates)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AnkietaHeader &&
        o.id == id &&
        o.title == title &&
        o.description == description &&
        o.active == active &&
        o.dates == dates;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        active.hashCode ^
        dates.hashCode;
  }
}

List<AnkietaHeader> demoAnkietaHeader = [
  AnkietaHeader(id: 'adfadfadf', active: false, title: 'To jest ankieta nr 1', 
    description: 'to jest dodatkowy opis ankiety nr 1', 
    dates: DateTimeRange(start: DateTime.now(), end: DateTime.now().add((Duration(days: 60))) )),
  AnkietaHeader(id: 'adfadfadf', active: true, title: 'To jest ankieta nr 2', 
    description: 'bzdurna ankieta nr 2', 
    dates: DateTimeRange(start: DateTime.now(), end: DateTime.now().add((Duration(days: 30))) )),
  AnkietaHeader(id: 'adfadfadf', active: true, title: 'co sądzisz o trombie', 
    description: 'to jest dodatkowy opis ankiety nr 3', 
    dates: DateTimeRange(start: DateTime.now(), end: DateTime.now().add((Duration(days: 90))) )),
];
