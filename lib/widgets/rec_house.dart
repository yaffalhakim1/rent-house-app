import 'package:flutter/material.dart';
import 'package:rent_house/models/rec.dart';
import 'package:rent_house/pages/detail_page.dart';
import 'package:rent_house/theme.dart';

class RecHouse extends StatelessWidget {
  final Rec rec;

  RecHouse(this.rec);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 15,
                color: Color(0xff616161).withOpacity(0.06),
              )
            ],
          ),
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  rec.imageUrl,
                  width: 60,
                ),
                SizedBox(
                  width: 25,
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rec.name,
                      style: blackTextStyle,
                    ),
                    Text(
                      rec.city,
                      style: greyTextStyle,
                    ),
                    Image.asset(
                      'assets/ratings.png',
                      width: 60,
                      height: 12,
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.chevron_right_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
