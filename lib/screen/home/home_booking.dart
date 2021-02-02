import 'package:flutter/material.dart';

class HomeBooking extends StatefulWidget {
  HomeBooking({Key key}) : super(key: key);

  @override
  _HomeBookingState createState() => _HomeBookingState();
}

class _HomeBookingState extends State<HomeBooking> {
  TextEditingController firstNameTextEditingController;
  TextEditingController lastNameTextEditingController;
  TextEditingController emailAddressTextEditingController;
  TextEditingController phoneNumberTextEditingController;
  TextEditingController partnerFirstNameTextEditingController;
  TextEditingController partnerLastNameTextEditingController;

  @override
  void initState() {
    super.initState();
    firstNameTextEditingController = TextEditingController();
    lastNameTextEditingController = TextEditingController();
    emailAddressTextEditingController = TextEditingController();
    phoneNumberTextEditingController = TextEditingController();
    partnerFirstNameTextEditingController = TextEditingController();
    partnerLastNameTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/help.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [about(w, h), input(w, h)],
      ),
    );
  }

  Widget input(w, h) {
    return Positioned(
      left: w / 3,
      top: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          children: [
            Text(
              "Enter Booking Detail",
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFF426248),
              ),
            ),
            Row(children: [],)
          ],
        ),
      ),
    );
  }

  Widget about(w, h) {
    return Positioned(
        left: 0,
        top: 0,
        child: Container(
          padding: EdgeInsets.only(top: 89, left: 10, right: 10),
          height: h,
          width: w / 3,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book a Psychological Counseling",
                style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Professional Assistance",
                style: TextStyle(fontSize: 36, color: Color(0xFF364146)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Choose a time for counseling.",
                style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "It will be a new way to improve\na relationship.",
                style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "After a series of counselors,\nthe psychologist will decide if\nyou and your partner need to\ntransplant emorgans.\n",
                style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If the answer is yes,\nyou’ll get a purchase code.\nYou can get back to here to\ndecide which emorgan is more\nsuitable for you and your partner.\n",
                style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
              ),
            ],
          ),
        ));
  }
}
