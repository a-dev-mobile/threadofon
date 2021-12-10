import 'package:flutter/material.dart';


class ThreadTabModel {
  final String title;
  final String gost;
  final String abrv;
  final Widget itemTab;

  const ThreadTabModel(
      {required this.itemTab,
      required this.title,
      required this.gost,
      required this.abrv});
}
