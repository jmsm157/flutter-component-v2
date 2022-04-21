import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              placeholder: AssetImage('assets/loading2.gif'),
              image: NetworkImage(
                  'https://servitravel.net/wp-content/uploads/2021/03/travel-landscape-01.jpg'))
        ],
      ),
    );
  }
}
