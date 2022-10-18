import 'package:flutter/material.dart';
import 'package:diseno/widgets/card_table.dart';
import 'package:diseno/widgets/custom_button_navigation.dart';
import 'package:diseno/widgets/background.dart';
import 'package:diseno/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //fondo
          Background(),
          //cuerpo
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomButtonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),
          //Tabla de tarjetas
          CardTable(),
        ],
      ),
    );
  }
}
