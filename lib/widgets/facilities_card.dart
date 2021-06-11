import 'package:flutter/material.dart';
import 'package:rent_house/models/facilities.dart';
import 'package:rent_house/theme.dart';

class FacilitiesCard extends StatelessWidget {
  final Facilities facilities;
  FacilitiesCard(this.facilities);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 110,
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
          children: [
            Image.asset(
              facilities.imageUrl,
              width: 100,
              height: 80,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              facilities.features,
              style: blackTextStyle.copyWith(
                  fontSize: 10, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
