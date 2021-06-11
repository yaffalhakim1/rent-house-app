import 'package:flutter/material.dart';
import 'package:rent_house/models/house.dart';
import 'package:rent_house/pages/detail_page.dart';
import 'package:rent_house/theme.dart';

class HouseCard extends StatelessWidget {
  final House house;
  HouseCard(this.house);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            height: 209,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 2),
                  blurRadius: 15,
                  color: Color(0xff616161).withOpacity(0.10),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  house.imageurl,
                  width: 230,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            house.name,
                            style: blackTextStyle.copyWith(fontSize: 14),
                          ),
                          Text(
                            house.city,
                            style: greyTextStyle.copyWith(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 44),
                      child: Image.asset(
                        'assets/ratings.png',
                        width: 60,
                        height: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
