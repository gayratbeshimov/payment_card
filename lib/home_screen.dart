import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_card/add_card.dart';
import 'package:payment_card/card_model.dart';
import 'package:payment_card/dao/dao.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key,}) : super(key: key);
  CardModel1? cardModel1;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Widget> cards = [
  CardModel(
    number: "**** **** **** 1234",
    date: "12/25",
    name: "Alijon Sherzodov",
    imgNumber: 2,
  ),
  CardModel(
    number: "**** **** **** 2222",
    date: "10/25",
    name: "Valijon Sherzodov",
    imgNumber: 4,
  ),
  CardModel(
    number: "**** **** **** 0000",
    date: "09/23",
    name: "Flutter Dartovich",
    imgNumber: 3,
  ),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.add_box,
                      size: 50,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddCard(

                            name: "Surname name",
                            number: "8600 **** **** ****",
                            ExpiryDate: "date",
                            imgNumber: 4,

                          )));
                    },
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/img_1.png'))),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    height: 199,
                    child: ListView.builder(
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                print("Bosma");
                              },
                              child: cards[index]);
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
