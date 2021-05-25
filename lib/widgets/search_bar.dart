import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        child: TextField(
          decoration: InputDecoration(
            labelText: 'find your dream home',
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: purpleColor,
            ),
          ),
        ),
      ),
    );
  }
}
