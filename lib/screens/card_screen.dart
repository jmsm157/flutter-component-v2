import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imgUrl:
                  'https://servitravel.net/wp-content/uploads/2021/03/travel-landscape-01.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/02/international-landscape-photographer-of-the-year-thumbnail.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imgUrl:
                  'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: 'Ut veniam ex non',
              imgUrl:
                  'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
