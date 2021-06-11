import 'package:flutter/material.dart';
import 'package:rent_house/models/facilities.dart';
import 'package:rent_house/theme.dart';
import 'package:rent_house/widgets/facilities_card.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/house_details.png',
              width: MediaQuery.of(context).size.width,
              height: 296,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 266,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modern House',
                                  style: blackTextStyle.copyWith(fontSize: 18),
                                ),
                                Text(
                                  'KBP Bandung, Indonesia',
                                  style: greyTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 63,
                            ),
                            Image.asset(
                              'assets/ratings.png',
                              width: 64,
                              height: 16,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Listing Agent',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile.png',
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'De Kezia',
                                      style: blackTextStyle.copyWith(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'House Owner',
                                      style: greyTextStyle.copyWith(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/btn_chat.png',
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/btn_call.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'House Facilities',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 110,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FacilitiesCard(
                                Facilities(
                                  id: 1,
                                  features: 'Swimming Pool',
                                  imageUrl: 'assets/swimming.png',
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FacilitiesCard(
                                Facilities(
                                  id: 2,
                                  features: '4 Bedroom',
                                  imageUrl: 'assets/bedroom.png',
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FacilitiesCard(
                                Facilities(
                                  id: 3,
                                  features: 'Garage',
                                  imageUrl: 'assets/garage.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Luxury homes at affordable prices with Bandungs\n hilly atmosphere Located in a strategic location,\n flood free.',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: greyTextStyle.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Rp 750000',
                                  style: purpleTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              width: 130,
                              // MediaQuery.of(context).size.width - (2 * 30),
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  primary: purpleColor,
                                  onPrimary: Colors.white,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(27.5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  style: whiteTextStyle.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 44,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
