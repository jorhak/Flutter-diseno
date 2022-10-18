import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CustomButtonNavigation extends StatelessWidget {
  const CustomButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.task_rounded), label: 'Tarea'),
        BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_read_sharp), label: 'Activida'),
        BottomNavigationBarItem(
            icon: Icon(Icons.cell_tower_sharp), label: 'Direccion'),
      ],
    );
  }
}
