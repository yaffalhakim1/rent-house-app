import 'package:flutter/material.dart';
import 'package:rent_house/models/house.dart';
import 'package:rent_house/models/rec.dart';
import 'package:rent_house/theme.dart';
import 'package:rent_house/widgets/house_card.dart';
import 'package:rent_house/widgets/rec_house.dart';
import 'package:rent_house/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 36),
                  child: Container(
                    height: 14,
                    width: 18,
                    child: Image.asset('assets/nav.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Find Your\nPerfect Place!',
                style: blackTextStyle.copyWith(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SearchBar(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 209,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HouseCard(
                    House(
                      id: 1,
                      name: 'Modern House',
                      city: 'Bandung',
                      imageurl: 'assets/house1.png',
                    ),
                  ),
                  HouseCard(
                    House(
                      id: 2,
                      name: 'Minimalis House',
                      city: 'Semarang',
                      imageurl: 'assets/house2.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Recommended For You',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                RecHouse(
                  Rec(
                      id: 1,
                      name: 'Wooden House',
                      city: 'Bandung',
                      imageUrl: 'assets/house3.png'),
                ),
                SizedBox(
                  height: 16,
                ),
                RecHouse(
                  Rec(
                      id: 2,
                      name: 'Triangle House',
                      city: 'Bandung',
                      imageUrl: 'assets/house4.png'),
                ),
                SizedBox(
                  height: 16,
                ),
                RecHouse(
                  Rec(
                      id: 3,
                      name: 'Hill House',
                      city: 'Bandung',
                      imageUrl: 'assets/house5.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
