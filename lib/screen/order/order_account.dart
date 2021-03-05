import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/menu_btn.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/provider/account.dart';
import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'order_appbar.dart';
import 'order_circle.dart';

class OrderAccount extends StatefulWidget {
  OrderAccount({Key key}) : super(key: key);
  @override
  _OrderAccountState createState() => _OrderAccountState();
}

String selectedKey;
String selectedItem;
String initialValue;

class _OrderAccountState extends State<OrderAccount> {
  bool firstNameStatus = false;
  bool emailAddressStatus = false;
  bool yotrLastName = false;
  bool phoneNumberStatus = false;

  bool nameOrCard = false;
  bool creditCardNumber = false;
  bool creditCardNumber2 = false;
  bool ccv = false;
  bool zipCode = false;
  TextEditingController firstNameTextEditingController;
  TextEditingController emailAddressTextEditingController;
  TextEditingController yotrLastNameTextEditingController;
  TextEditingController phoneNumberTextEditingController;

  TextEditingController nameOrCardTextEditingController;
  TextEditingController creditTextEditingController;
  TextEditingController creditCardTextEditingController;
  TextEditingController ccvTextEditingController;
  TextEditingController billingTextEditingController;
  void success() {
    setState(() {
      firstNameTextEditingController.text = "";
      emailAddressTextEditingController.text = "";
      yotrLastNameTextEditingController.text = "";
      phoneNumberTextEditingController.text = "";

      nameOrCardTextEditingController.text = "";
      creditTextEditingController.text = "";
      creditCardTextEditingController.text = "";
      ccvTextEditingController.text = "";
      billingTextEditingController.text = "";
    });
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Buyloding()));
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => Buyloding()));
  }

  @override
  void initState() {
    super.initState();

    firstNameTextEditingController = TextEditingController();
    emailAddressTextEditingController = TextEditingController();
    yotrLastNameTextEditingController = TextEditingController();
    phoneNumberTextEditingController = TextEditingController();

    nameOrCardTextEditingController = TextEditingController();
    creditTextEditingController = TextEditingController();
    creditCardTextEditingController = TextEditingController();
    ccvTextEditingController = TextEditingController();
    billingTextEditingController = TextEditingController();
    selectedKey = keys[0];

    firstNameTextEditingController.addListener(() {
      if (firstNameTextEditingController.text.length > 0) {
        setState(() {
          firstNameStatus = true;
        });
      } else {
        setState(() {
          firstNameStatus = false;
        });
      }
    });
    emailAddressTextEditingController.addListener(() {
      if (emailAddressTextEditingController.text.length > 0) {
        setState(() {
          emailAddressStatus = true;
        });
      } else {
        setState(() {
          emailAddressStatus = false;
        });
      }
    });
    yotrLastNameTextEditingController.addListener(() {
      if (yotrLastNameTextEditingController.text.length > 0) {
        setState(() {
          yotrLastName = true;
        });
      } else {
        setState(() {
          yotrLastName = false;
        });
      }
    });
    phoneNumberTextEditingController.addListener(() {
      if (phoneNumberTextEditingController.text.length > 0) {
        setState(() {
          phoneNumberStatus = true;
        });
      } else {
        setState(() {
          phoneNumberStatus = false;
        });
      }
    });
    nameOrCardTextEditingController.addListener(() {
      if (nameOrCardTextEditingController.text.length > 0) {
        setState(() {
          nameOrCard = true;
        });
      } else {
        setState(() {
          nameOrCard = false;
        });
      }
    });
    creditTextEditingController.addListener(() {
      if (creditTextEditingController.text.length > 0) {
        setState(() {
          creditCardNumber = true;
        });
      } else {
        setState(() {
          creditCardNumber = false;
        });
      }
    });
    creditCardTextEditingController.addListener(() {
      if (creditCardTextEditingController.text.length > 0) {
        setState(() {
          creditCardNumber2 = true;
        });
      } else {
        setState(() {
          creditCardNumber2 = false;
        });
      }
    });

    ccvTextEditingController.addListener(() {
      if (ccvTextEditingController.text.length > 0) {
        setState(() {
          ccv = true;
        });
      } else {
        setState(() {
          ccv = false;
        });
      }
    });
    billingTextEditingController.addListener(() {
      if (billingTextEditingController.text.length > 0) {
        setState(() {
          zipCode = true;
        });
      } else {
        setState(() {
          zipCode = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var accountStatus = Provider.of<AccountStatus>(context);
    // double h = 900;
    List<bool> colorStatus = [false, false, false, true];
    List<bool> beforColorStatus = [true, true, true, true];
    Widget infoInput() {
      return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/order_left_backround.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(left: 100, right: 100),
          height: h,
          width: w / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Enter Account Detail",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(color: Color(0xFF424648), fontSize: 32),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  LeftInput(
                    firstNameTextEditingController:
                        firstNameTextEditingController,
                    emailAddressTextEditingController:
                        emailAddressTextEditingController,
                    yotrLastNameTextEditingController:
                        yotrLastNameTextEditingController,
                    phoneNumberTextEditingController:
                        phoneNumberTextEditingController,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    width: w / 2 / 3 * 2 + 30,
                    height: 1,
                    color: Colors.white,
                  ),
                  Text(
                    "Payment",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(color: Color(0xFF424648), fontSize: 32),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  LeftInput2(
                    nameOrCardTextEditingController:
                        nameOrCardTextEditingController,
                    creditTextEditingController: creditTextEditingController,
                    creditCardTextEditingController:
                        creditCardTextEditingController,
                    ccvTextEditingController: ccvTextEditingController,
                    billingTextEditingController: billingTextEditingController,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ],
          ));
    }

    Widget orderTitleAndLine(String title) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: windows_width_medium_size(w),
                color: Color(0xFF424648),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 1,
              color: Color(0xFFC8C1EF))
        ],
      );
    }

    Widget order_dobdy(String title, String body) {
      return Row(
        children: [
          SizedBox(
            width: 120,
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: windows_width_small_size(w),
                color: Color(0xFF424648),
              ),
            ),
          ),
          Expanded(child: Container()),
          Text(
            body,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: windows_width_small_size(w),
                color: Color(0xFF424648),
              ),
            ),
          )
        ],
      );
    }

    // 輸入頁
    Widget orderPrice() {
      return Container(
        height: h,
        width: w / 2,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/order_information_right_backround.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(left: w / 2 / 6, right: w / 2 / 6),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container()),
                orderTitleAndLine("Emorgan"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Circle(
                          isLeft: true,
                          isClick: false,
                          isDefault: true,
                          imgPath: accountStatus.getAccount1ImangePath,
                          text: accountStatus.getAccount1Name,
                          smill: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Human A",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: windows_width_medium_size(w),
                                color: Color(0xFF424648)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Circle(
                          isLeft: true,
                          isClick: false,
                          isDefault: true,
                          imgPath: accountStatus.getAccount2ImangePath,
                          text: accountStatus.getAccount2Name,
                          smill: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Human B",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: windows_width_medium_size(w),
                                color: Color(0xFF424648)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                orderTitleAndLine("Operation"),
                SizedBox(
                  height: 10,
                ),
                order_dobdy("Date", accountStatus.getAccountDate),
                SizedBox(
                  height: 30,
                ),
                order_dobdy("Place", "EMORGAN RoomA"),
                SizedBox(
                  height: 40,
                ),
                orderTitleAndLine("Summary"),
                SizedBox(
                  height: 10,
                ),
                order_dobdy(accountStatus.getAccountOrderName1, "0.99 BTC"),
                SizedBox(
                  height: 30,
                ),
                order_dobdy(accountStatus.getAccountOrderName2, "0.99 BTC"),
                SizedBox(
                  height: 30,
                ),
                order_dobdy("Operation", "0.02 BTC"),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    color: Color(0xFFC8C1EF)),
                Row(
                  children: [
                    Text(
                      "Purchase Price",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: windows_width_medium_size(w),
                          color: Color(0xFF424648),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "2.00",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: windows_width_large_size(w),
                          color: Color(0xFF424648),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "BTC",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: windows_width_medium_size(w),
                          color: Color(0xFF424648),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        color: Colors.white,
        child: Stack(
          children: [
            Row(
              children: [
                infoInput(),
                orderPrice(),
              ],
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    if (firstNameStatus &&
                        emailAddressStatus &&
                        yotrLastName &&
                        phoneNumberStatus &&
                        nameOrCard &&
                        creditCardNumber &&
                        creditCardNumber2 &&
                        ccv &&
                        zipCode) success();
                  },
                  // onHover: (value) {
                  //   print(value);
                  // },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: new BoxDecoration(
                      border: new Border.all(
                          color: firstNameStatus &&
                                  emailAddressStatus &&
                                  yotrLastName &&
                                  phoneNumberStatus &&
                                  nameOrCard &&
                                  creditCardNumber &&
                                  creditCardNumber2 &&
                                  ccv &&
                                  zipCode
                              ? Color(0xFF7A82A7)
                              : Color(0xF80364146),
                          width: 2), // 邊色寬度
                      color: firstNameStatus &&
                              emailAddressStatus &&
                              yotrLastName &&
                              phoneNumberStatus &&
                              nameOrCard &&
                              creditCardNumber &&
                              creditCardNumber2 &&
                              ccv &&
                              zipCode
                          ? Color(0xFF7A82A7)
                          : Colors.transparent, // 底色底色
                      borderRadius: new BorderRadius.circular((60)), // 圆角度
                    ),
                    child: Text(
                      "PLACE ORDER",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: firstNameStatus &&
                                    emailAddressStatus &&
                                    yotrLastName &&
                                    phoneNumberStatus &&
                                    nameOrCard &&
                                    creditCardNumber &&
                                    creditCardNumber2 &&
                                    ccv &&
                                    zipCode
                                ? Colors.white
                                : Color(0x80364146),
                            fontSize: windows_width_small_size(w)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: OrderAppbar(
                colorStatus: colorStatus,
                beforStatus: beforColorStatus,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 50,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: Color(0xFF7A82A7),
                    ),
                    Text(
                      "Back ",
                      style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(fontSize: 16, color: Color(0xFF364146)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget edit2(control) {
  return Container(
    width: 65,
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.circular((60)), // 圆角度
    ),
    height: 30,
    child: TextField(
      cursorColor: Color(0xFFCFDDF9),
      controller: control,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
            left: 10,
            bottom: 20, // HERE THE IMPORTANT PART
          )),
    ),
  );
}

Widget edit(title, control, w) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              fontSize: windows_width_small_size(w), color: Color(0xFF424648)),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular((60)), // 圆角度
        ),
        height: 30,
        child: TextField(
          cursorColor: Color(0xFFCFDDF9),
          controller: control,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 10,
                bottom: 20, // HERE THE IMPORTANT PART
              )),
        ),
      ),
    ],
  );
}

class LeftInput extends StatelessWidget {
  const LeftInput(
      {Key key,
      @required this.firstNameTextEditingController,
      @required this.emailAddressTextEditingController,
      @required this.yotrLastNameTextEditingController,
      @required this.phoneNumberTextEditingController})
      : super(key: key);
  final TextEditingController firstNameTextEditingController;
  final TextEditingController emailAddressTextEditingController;
  final TextEditingController yotrLastNameTextEditingController;
  final TextEditingController phoneNumberTextEditingController;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: w / 2 / 3,
                child:
                    edit("Your First Name", firstNameTextEditingController, w)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: w / 2 / 3,
                child: edit(
                    "Email Address", emailAddressTextEditingController, w)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: w / 2 / 3,
                child: edit(
                    "Your Last Name", yotrLastNameTextEditingController, w)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: w / 2 / 3,
                child:
                    edit("Phone Number", phoneNumberTextEditingController, w)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}

class LeftInput2 extends StatelessWidget {
  const LeftInput2(
      {Key key,
      @required this.nameOrCardTextEditingController,
      @required this.creditTextEditingController,
      @required this.creditCardTextEditingController,
      @required this.ccvTextEditingController,
      @required this.billingTextEditingController})
      : super(key: key);
  final TextEditingController nameOrCardTextEditingController;
  final TextEditingController creditTextEditingController;
  final TextEditingController creditCardTextEditingController;
  final TextEditingController ccvTextEditingController;
  final TextEditingController billingTextEditingController;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: (w / 2 / 3 * 2) + 20,
            child: edit("Name on Card", nameOrCardTextEditingController, w)),
        SizedBox(
          height: 20,
        ),
        Container(
            width: (w / 2 / 3 * 2) + 20,
            child: edit("Credit Card Number", creditTextEditingController, w)),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            Container(
                width: (w / 2 / 3 * 2 / 3) - 10,
                child: edit(
                    "CreDit Card Number", creditCardTextEditingController, w)),
            SizedBox(
              width: 20,
            ),
            Container(
                width: (w / 2 / 3 * 2 / 3) - 10,
                child: edit("CCV", ccvTextEditingController, w)),
            SizedBox(
              width: 20,
            ),
            Container(
                width: (w / 2 / 3 * 2 / 3),
                child:
                    edit("Billing Zip Code", billingTextEditingController, w)),
          ],
        )
      ],
    );
  }
}
