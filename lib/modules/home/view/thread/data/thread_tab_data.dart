

import 'package:threadofon/modules/home/view/thread/models/thread_tab_model.dart';
import 'package:threadofon/modules/home/view/thread/view/m_thread/m_thread_widget.dart';

const List<ThreadTabModel> threadTabData = [
  ThreadTabModel(
    title: 'Метрическая',
    gost: 'ГОСТ 123',
    abrv: 'M',
     itemTab: MThreadWidget(),
  ),
  ThreadTabModel(
    title: 'Трапецидальная',
    gost: 'ГОСТ 321',
    abrv: 'Tr',
    itemTab: MThreadWidget(),
  ),
  ThreadTabModel(
    title: 'Трубная',
    gost: 'ГОСТ 111',
    abrv: 'G',
    itemTab: MThreadWidget(),
  ),
  ThreadTabModel(
    title: 'Дюймовая',
    gost: 'ГОСТ 565',
    abrv: 'UNC',
    itemTab: MThreadWidget(),
  ),
];
