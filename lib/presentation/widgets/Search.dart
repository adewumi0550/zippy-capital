import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zippy/constants/Color.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Positioned(
        bottom: -45,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 30,
          padding: EdgeInsets.only(left: 10, right: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 5.5, blurRadius: 5.5)
              ]),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                FontAwesomeIcons.moneyBill,
                color: primaryColor,
              ),
              contentPadding: const EdgeInsets.only(top: 15.0),
              hintText: 'Loan amount',
              hintStyle: TextStyle(
                color: colorCard,
                fontSize: 14.0,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
