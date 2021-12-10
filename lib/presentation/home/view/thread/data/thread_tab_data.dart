import 'package:flutter/material.dart';

import 'package:threadofon/presentation/home/view/thread/view/m_thread/m_view.dart';

class ThreadTabData {
  final String title;
  final String gost;
  final String abrv;
  final Widget itemTab;

  const ThreadTabData(
      {required this.itemTab,
      required this.title,
      required this.gost,
      required this.abrv});
}

const List<ThreadTabData> threadTabs = [
  // ThreadTabData(
  //   title: 'Метрическая',
  //   gost: 'ГОСТ 123',
  //   abrv: 'M',
  //   // itemTab: MView(),
  // ),
  // ThreadTabData(
  //   title: 'Трапецидальная',
  //   gost: 'ГОСТ 321',
  //   abrv: 'Tr',
  //   itemTab: MView(),
  // ),
  // ThreadTabData(
  //   title: 'Трубная',
  //   gost: 'ГОСТ 111',
  //   abrv: 'G',
  //   itemTab: MView(),
  // ),
  // ThreadTabData(
  //   title: 'Дюймовая',
  //   gost: 'ГОСТ 565',
  //   abrv: 'UNC',
  //   itemTab: MView(),
  // ),
];
