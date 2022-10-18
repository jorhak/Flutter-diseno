import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          //Titulo
          Title(),

          //Botones
          ButtonSection(),

          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
                '¿Por qué ver por separadas esta vida y la siguiente si una proviene de la anterior? ... Habla del anhelo, de un alma que clama por otra. Yo soy su legado. Su sacrificio me enseñó que, aún después de la noche más oscura, el sol saldrá de nuevo. Si el corazón es lo bastante fuerte, el alma renacerá con cada nuevo día. Vida tras vida; época tras época, para siempre.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vamos a ganar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'No importa el tiempo',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star_rate_rounded, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.telegram,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
