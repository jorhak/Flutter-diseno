import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.radar,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.local_taxi_rounded,
            color: Colors.pinkAccent,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_outlined,
            color: Colors.deepPurple,
            text: 'Entretainment',
          ),
          _SingleCard(
            icon: Icons.food_bank_outlined,
            color: Colors.grey,
            text: 'Food',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.run_circle_outlined,
            color: Colors.orangeAccent,
            text: 'Play',
          ),
          _SingleCard(
            icon: Icons.file_copy_outlined,
            color: Colors.brown,
            text: 'Papaer',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.delivery_dining_outlined,
            color: Colors.greenAccent,
            text: 'Delivery',
          ),
          _SingleCard(
            icon: Icons.shopping_bag_rounded,
            color: Colors.tealAccent,
            text: 'Shopping',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(text, style: TextStyle(fontSize: 18, color: color))
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  final Widget child;
  const _Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 108, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
