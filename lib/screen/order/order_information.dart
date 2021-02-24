import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/menu_btn.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:emorgan/util/dateString.dart';
import 'package:emorgan/util/order_page_status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';

import 'order_account.dart';
import 'order_appbar.dart';
import 'order_patch.dart';
import 'order_shopping_code.dart';

class OrderImformation extends StatefulWidget {
  OrderImformation(
      {Key key, @required this.leftImagePath, @required this.rightImagePath})
      : super(key: key);
  final String leftImagePath;
  final String rightImagePath;
  @override
  _OrderImformationState createState() => _OrderImformationState();
}

String selectedKey;
String selectedItem;
String initialValue;

class _OrderImformationState extends State<OrderImformation>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  bool firstNameStatus1 = false;
  bool idNumberStatus1 = false;
  bool emailAddressStatus1 = false;
  bool lastNameStatus1 = false;
  bool birthday1Status1 = false;
  bool birthday2Status1 = false;
  bool birthday3Status1 = false;
  bool phoneNumberStatus1 = false;

  bool firstNameStatus2 = false;
  bool idNumberStatus2 = false;
  bool emailAddressStatus2 = false;
  bool lastNameStatus2 = false;
  bool birthday1Status2 = false;
  bool birthday2Status2 = false;
  bool birthday3Status2 = false;
  bool phoneNumberStatus2 = false;
  bool isDate = false;
  TextEditingController firstNameTextEditingController1;
  TextEditingController idNumberTextEditingController1;
  TextEditingController emailAddressTextEditingController1;
  TextEditingController lastNameTextEditingController1;
  TextEditingController birthday1TextEditingController1;
  TextEditingController birthday2TextEditingController1;
  TextEditingController birthday3TextEditingController1;
  TextEditingController phoneNumberTextEditingController1;

  TextEditingController firstNameTextEditingController2;
  TextEditingController idNumberTextEditingController2;
  TextEditingController emailAddressTextEditingController2;
  TextEditingController lastNameTextEditingController2;
  TextEditingController birthday1TextEditingController2;
  TextEditingController birthday2TextEditingController2;
  TextEditingController birthday3TextEditingController2;
  TextEditingController phoneNumberTextEditingController2;
  List<bool> statusList = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  List<List<String>> selectedList = [
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
  ];
  //記錄最後一次點擊的index
  int endIndex = 9;
  void selectedListLoor(int index, String value, int ontapIndex) {
    for (int i = 0; i < selectedList.length; i++) {
      if (i == index) {
        for (int o = 0; o < selectedList[i].length; o++) {
          if (o == ontapIndex) {
            //將選擇的直存起來
            selectedList[i][o] = value;
            //有選擇的話記錄起來
            setState(() {
              isDate = true;
            });
          } else {
            selectedList[i][o] = "";
          }
        }
      } else {
        selectedList[i] = [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
        ];
      }
    }
  }

  //循環list把點擊的那一個index bool改變 給下拉選單用
  void listLoor(int index) {
    for (int i = 0; i < statusList.length; i++) {
      if (i == index) {
        statusList[i] = !statusList[i];
        //如果false =打開  最後一次打開的存起來
        if (statusList[i] == false) {
          endIndex = index;
        }
      } else {
        statusList[i] = true;
      }
    }
  }

  void dateBtn0() {
    setState(() {
      listLoor(0);
    });
  }

  void dateBtn1() {
    setState(() {
      listLoor(1);
    });
  }

  void dateBtn2() {
    setState(() {
      listLoor(2);
    });
  }

  void dateBtn3() {
    setState(() {
      listLoor(3);
    });
  }

  void dateBtn4() {
    setState(() {
      listLoor(4);
    });
  }

  void dateBtn5() {
    setState(() {
      listLoor(5);
    });
  }

  void selected0(value, ontapIndex) {
    setState(() {
      selectedListLoor(0, value, ontapIndex);
    });
  }

  void selected1(value, ontapIndex) {
    setState(() {
      selectedListLoor(1, value, ontapIndex);
    });
  }

  void selected2(value, ontapIndex) {
    setState(() {
      selectedListLoor(2, value, ontapIndex);
    });
  }

  void selected3(value, ontapIndex) {
    setState(() {
      selectedListLoor(3, value, ontapIndex);
    });
  }

  void selected4(value, ontapIndex) {
    setState(() {
      selectedListLoor(4, value, ontapIndex);
    });
  }

  void selected5(value, ontapIndex) {
    setState(() {
      selectedListLoor(5, value, ontapIndex);
    });
  }

  void success() {
    setState(() {
      firstNameTextEditingController1.text = "";
      idNumberTextEditingController1.text = "";
      emailAddressTextEditingController1.text = "";
      lastNameTextEditingController1.text = "";
      birthday1TextEditingController1.text = "";
      birthday2TextEditingController1.text = "";
      birthday3TextEditingController1.text = "";
      phoneNumberTextEditingController1.text = "";

      firstNameTextEditingController2.text = "";
      idNumberTextEditingController2.text = "";
      emailAddressTextEditingController2.text = "";
      lastNameTextEditingController2.text = "";
      birthday1TextEditingController2.text = "";
      birthday2TextEditingController2.text = "";
      birthday3TextEditingController2.text = "";
      phoneNumberTextEditingController2.text = "";
      for (int i = 0; i < selectedList.length; i++) {
        selectedList[i] = [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
        ];
      }
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderAccount()));
  }

  @override
  void initState() {
    super.initState();

    firstNameTextEditingController1 = TextEditingController();
    idNumberTextEditingController1 = TextEditingController();
    emailAddressTextEditingController1 = TextEditingController();
    lastNameTextEditingController1 = TextEditingController();
    birthday1TextEditingController1 = TextEditingController();
    birthday2TextEditingController1 = TextEditingController();
    birthday3TextEditingController1 = TextEditingController();
    phoneNumberTextEditingController1 = TextEditingController();

    firstNameTextEditingController2 = TextEditingController();
    idNumberTextEditingController2 = TextEditingController();
    emailAddressTextEditingController2 = TextEditingController();
    lastNameTextEditingController2 = TextEditingController();
    birthday1TextEditingController2 = TextEditingController();
    birthday2TextEditingController2 = TextEditingController();
    birthday3TextEditingController2 = TextEditingController();
    phoneNumberTextEditingController2 = TextEditingController();

    selectedKey = keys[0];

    firstNameTextEditingController1.addListener(() {
      if (firstNameTextEditingController1.text.length > 0) {
        setState(() {
          firstNameStatus1 = true;
        });
      } else {
        setState(() {
          firstNameStatus1 = false;
        });
      }
    });
    idNumberTextEditingController1.addListener(() {
      if (idNumberTextEditingController1.text.length > 0) {
        setState(() {
          idNumberStatus1 = true;
        });
      } else {
        setState(() {
          idNumberStatus1 = false;
        });
      }
    });
    emailAddressTextEditingController1.addListener(() {
      if (emailAddressTextEditingController1.text.length > 0) {
        setState(() {
          emailAddressStatus1 = true;
        });
      } else {
        setState(() {
          emailAddressStatus1 = false;
        });
      }
    });
    lastNameTextEditingController1.addListener(() {
      if (lastNameTextEditingController1.text.length > 0) {
        setState(() {
          lastNameStatus1 = true;
        });
      } else {
        setState(() {
          lastNameStatus1 = false;
        });
      }
    });
    birthday1TextEditingController1.addListener(() {
      if (birthday1TextEditingController1.text.length > 0) {
        setState(() {
          birthday1Status1 = true;
        });
      } else {
        setState(() {
          birthday1Status1 = false;
        });
      }
    });
    birthday2TextEditingController1.addListener(() {
      if (birthday2TextEditingController1.text.length > 0) {
        setState(() {
          birthday2Status1 = true;
        });
      } else {
        setState(() {
          birthday2Status1 = false;
        });
      }
    });
    birthday3TextEditingController1.addListener(() {
      if (birthday3TextEditingController1.text.length > 0) {
        setState(() {
          birthday3Status1 = true;
        });
      } else {
        setState(() {
          birthday3Status1 = false;
        });
      }
    });
    birthday2TextEditingController1.addListener(() {
      if (birthday2TextEditingController1.text.length > 0) {
        setState(() {
          birthday2Status1 = true;
        });
      } else {
        setState(() {
          birthday2Status1 = false;
        });
      }
    });
    firstNameTextEditingController1.addListener(() {
      if (firstNameTextEditingController1.text.length > 0) {
        setState(() {
          firstNameStatus1 = true;
        });
      } else {
        setState(() {
          firstNameStatus1 = false;
        });
      }
    });
    idNumberTextEditingController1.addListener(() {
      if (idNumberTextEditingController1.text.length > 0) {
        setState(() {
          idNumberStatus1 = true;
        });
      } else {
        setState(() {
          idNumberStatus1 = false;
        });
      }
    });
    emailAddressTextEditingController1.addListener(() {
      if (emailAddressTextEditingController1.text.length > 0) {
        setState(() {
          emailAddressStatus1 = true;
        });
      } else {
        setState(() {
          emailAddressStatus1 = false;
        });
      }
    });
    lastNameTextEditingController1.addListener(() {
      if (lastNameTextEditingController1.text.length > 0) {
        setState(() {
          lastNameStatus1 = true;
        });
      } else {
        setState(() {
          lastNameStatus1 = false;
        });
      }
    });
    birthday1TextEditingController1.addListener(() {
      if (birthday1TextEditingController1.text.length > 0) {
        setState(() {
          birthday1Status1 = true;
        });
      } else {
        setState(() {
          birthday1Status1 = false;
        });
      }
    });
    birthday2TextEditingController1.addListener(() {
      if (birthday2TextEditingController1.text.length > 0) {
        setState(() {
          birthday2Status1 = true;
        });
      } else {
        setState(() {
          birthday2Status1 = false;
        });
      }
    });
    birthday3TextEditingController1.addListener(() {
      if (birthday3TextEditingController1.text.length > 0) {
        setState(() {
          birthday3Status1 = true;
        });
      } else {
        setState(() {
          birthday3Status1 = false;
        });
      }
    });
    phoneNumberTextEditingController1.addListener(() {
      if (phoneNumberTextEditingController1.text.length > 0) {
        setState(() {
          phoneNumberStatus1 = true;
        });
      } else {
        setState(() {
          phoneNumberStatus1 = false;
        });
      }
    });

//第二
    firstNameTextEditingController2.addListener(() {
      if (firstNameTextEditingController2.text.length > 0) {
        setState(() {
          firstNameStatus2 = true;
        });
      } else {
        setState(() {
          firstNameStatus2 = false;
        });
      }
    });
    idNumberTextEditingController2.addListener(() {
      if (idNumberTextEditingController2.text.length > 0) {
        setState(() {
          idNumberStatus2 = true;
        });
      } else {
        setState(() {
          idNumberStatus2 = false;
        });
      }
    });
    emailAddressTextEditingController2.addListener(() {
      if (emailAddressTextEditingController2.text.length > 0) {
        setState(() {
          emailAddressStatus2 = true;
        });
      } else {
        setState(() {
          emailAddressStatus2 = false;
        });
      }
    });
    lastNameTextEditingController2.addListener(() {
      if (lastNameTextEditingController2.text.length > 0) {
        setState(() {
          lastNameStatus2 = true;
        });
      } else {
        setState(() {
          lastNameStatus2 = false;
        });
      }
    });
    birthday1TextEditingController2.addListener(() {
      if (birthday1TextEditingController2.text.length > 0) {
        setState(() {
          birthday1Status2 = true;
        });
      } else {
        setState(() {
          birthday1Status2 = false;
        });
      }
    });
    birthday2TextEditingController2.addListener(() {
      if (birthday2TextEditingController2.text.length > 0) {
        setState(() {
          birthday2Status2 = true;
        });
      } else {
        setState(() {
          birthday2Status2 = false;
        });
      }
    });
    birthday3TextEditingController2.addListener(() {
      if (birthday3TextEditingController2.text.length > 0) {
        setState(() {
          birthday3Status2 = true;
        });
      } else {
        setState(() {
          birthday3Status2 = false;
        });
      }
    });
    birthday2TextEditingController2.addListener(() {
      if (birthday2TextEditingController2.text.length > 0) {
        setState(() {
          birthday2Status2 = true;
        });
      } else {
        setState(() {
          birthday2Status2 = false;
        });
      }
    });
    firstNameTextEditingController2.addListener(() {
      if (firstNameTextEditingController2.text.length > 0) {
        setState(() {
          firstNameStatus2 = true;
        });
      } else {
        setState(() {
          firstNameStatus2 = false;
        });
      }
    });
    idNumberTextEditingController2.addListener(() {
      if (idNumberTextEditingController2.text.length > 0) {
        setState(() {
          idNumberStatus2 = true;
        });
      } else {
        setState(() {
          idNumberStatus2 = false;
        });
      }
    });
    emailAddressTextEditingController2.addListener(() {
      if (emailAddressTextEditingController2.text.length > 0) {
        setState(() {
          emailAddressStatus2 = true;
        });
      } else {
        setState(() {
          emailAddressStatus2 = false;
        });
      }
    });
    lastNameTextEditingController2.addListener(() {
      if (lastNameTextEditingController2.text.length > 0) {
        setState(() {
          lastNameStatus2 = true;
        });
      } else {
        setState(() {
          lastNameStatus2 = false;
        });
      }
    });
    birthday1TextEditingController2.addListener(() {
      if (birthday1TextEditingController2.text.length > 0) {
        setState(() {
          birthday1Status2 = true;
        });
      } else {
        setState(() {
          birthday1Status2 = false;
        });
      }
    });
    birthday2TextEditingController2.addListener(() {
      if (birthday2TextEditingController2.text.length > 0) {
        setState(() {
          birthday2Status2 = true;
        });
      } else {
        setState(() {
          birthday2Status2 = false;
        });
      }
    });
    birthday3TextEditingController2.addListener(() {
      if (birthday3TextEditingController2.text.length > 0) {
        setState(() {
          birthday3Status2 = true;
        });
      } else {
        setState(() {
          birthday3Status2 = false;
        });
      }
    });
    phoneNumberTextEditingController2.addListener(() {
      if (phoneNumberTextEditingController2.text.length > 0) {
        setState(() {
          phoneNumberStatus2 = true;
        });
      } else {
        setState(() {
          phoneNumberStatus2 = false;
        });
      }
    });
  }

  // bool isStatus() {
  //   return firstNameStatus1 &&
  //       idNumberStatus1 &&
  //       emailAddressStatus1 &&
  //       lastNameStatus1 &&
  //       birthday1Status1 &&
  //       birthday2Status1 &&
  //       birthday3Status1 &&
  //       phoneNumberStatus1 &&
  //       firstNameStatus2 &&
  //       idNumberStatus2 &&
  //       emailAddressStatus2 &&
  //       lastNameStatus2 &&
  //       birthday1Status2 &&
  //       birthday2Status2 &&
  //       birthday3Status2 &&
  //       phoneNumberStatus2&&isDate;
  // }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    OrderPageStatus _orderStatus = OrderPageStatus();
    GetDateStr _getDateStr = GetDateStr();
    // double h = 900;
    List<bool> colorStatus = [false, false, true, false];
    List<bool> beforColorStatus = [true, true, true, false];
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
            children: [
              Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Personal Information",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(color: Color(0xFF424648), fontSize: 32),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  LeftInput(
                    imageTitle: "Human A",
                    imagePath: widget.leftImagePath,
                    firstNameTextEditingController:
                        firstNameTextEditingController1,
                    idNumberTextEditingController:
                        idNumberTextEditingController1,
                    emailAddressTextEditingController:
                        emailAddressTextEditingController1,
                    lastNameTextEditingController:
                        lastNameTextEditingController1,
                    birthday1TextEditingController:
                        birthday1TextEditingController1,
                    birthday2TextEditingController:
                        birthday2TextEditingController1,
                    birthday3TextEditingController:
                        birthday3TextEditingController1,
                    phoneNumberTextEditingController:
                        phoneNumberTextEditingController1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    width: 610,
                    height: 1,
                    color: Colors.white,
                  ),
                  LeftInput(
                    imageTitle: "Human B",
                    imagePath: widget.rightImagePath,
                    firstNameTextEditingController:
                        firstNameTextEditingController2,
                    idNumberTextEditingController:
                        idNumberTextEditingController2,
                    emailAddressTextEditingController:
                        emailAddressTextEditingController2,
                    lastNameTextEditingController:
                        lastNameTextEditingController2,
                    birthday1TextEditingController:
                        birthday1TextEditingController2,
                    birthday2TextEditingController:
                        birthday2TextEditingController2,
                    birthday3TextEditingController:
                        birthday3TextEditingController2,
                    phoneNumberTextEditingController:
                        phoneNumberTextEditingController2,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Expanded(child: Container()),
            ],
          ));
    }

    //輸入頁
    Widget dateSelect() {
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
          padding: EdgeInsets.only(
            left: windowsPaddingWidthSize(((w / 3) * 2 / 4) - 20),
            right: windowsPaddingWidthSize(((w / 3) * 2 / 4) - 20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Container()),
              Text(
                "Booking Date",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: windows_width_large_size(w),
                    color: Color(0xFF424648),
                  ),
                ),
              ),
              SizedBox(
                height: windowsSizeboxHightSize(100),
              ),
              Text(
                "2021",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: windows_width_large_size(w),
                      color: Color(0xFF424648)),
                ),
              ),
              SizedBox(
                height: windowsSizeboxHightSize(35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new DateWidget(
                    title: _getDateStr.getDateStr(1),
                    dateStr: _getDateStr.getDateNumStr(1),
                    index: 0,
                    openStatus: statusList[0],
                    upBtn: dateBtn0,
                    selectedDate: selected0,
                    items: selectedList[0],
                  ),
                  new DateWidget(
                    title: _getDateStr.getDateStr(2),
                    dateStr: _getDateStr.getDateNumStr(2),
                    index: 1,
                    openStatus: statusList[1],
                    upBtn: dateBtn1,
                    selectedDate: selected1,
                    items: selectedList[1],
                  ),
                  new DateWidget(
                    title: _getDateStr.getDateStr(3),
                    dateStr: _getDateStr.getDateNumStr(3),
                    index: 2,
                    openStatus: statusList[2],
                    upBtn: dateBtn2,
                    selectedDate: selected2,
                    items: selectedList[2],
                  ),
                  new DateWidget(
                    title: _getDateStr.getDateStr(4),
                    dateStr: _getDateStr.getDateNumStr(4),
                    index: 3,
                    openStatus: statusList[3],
                    upBtn: dateBtn3,
                    selectedDate: selected3,
                    items: selectedList[3],
                  ),
                  new DateWidget(
                    title: _getDateStr.getDateStr(5),
                    dateStr: _getDateStr.getDateNumStr(5),
                    index: 4,
                    openStatus: statusList[4],
                    upBtn: dateBtn4,
                    selectedDate: selected4,
                    items: selectedList[4],
                  ),
                  new DateWidget(
                    title: _getDateStr.getDateStr(6),
                    dateStr: _getDateStr.getDateNumStr(6),
                    index: 5,
                    openStatus: statusList[5],
                    upBtn: dateBtn5,
                    selectedDate: selected5,
                    items: selectedList[5],
                  )
                ],
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/help.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Stack(
          children: [
            Row(
              children: [
                infoInput(),
                dateSelect(),
              ],
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    if (firstNameStatus1 &&
                        idNumberStatus1 &&
                        emailAddressStatus1 &&
                        lastNameStatus1 &&
                        birthday1Status1 &&
                        birthday2Status1 &&
                        birthday3Status1 &&
                        phoneNumberStatus1 &&
                        firstNameStatus2 &&
                        idNumberStatus2 &&
                        emailAddressStatus2 &&
                        lastNameStatus2 &&
                        birthday1Status2 &&
                        birthday2Status2 &&
                        birthday3Status2 &&
                        phoneNumberStatus2 &&
                        isDate) success();
                  },
                  // onHover: (value) {
                  //   print(value);
                  // },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: new BoxDecoration(
                      border: new Border.all(
                          color: firstNameStatus1 &&
                                  idNumberStatus1 &&
                                  emailAddressStatus1 &&
                                  lastNameStatus1 &&
                                  birthday1Status1 &&
                                  birthday2Status1 &&
                                  birthday3Status1 &&
                                  phoneNumberStatus1 &&
                                  firstNameStatus2 &&
                                  idNumberStatus2 &&
                                  emailAddressStatus2 &&
                                  lastNameStatus2 &&
                                  birthday1Status2 &&
                                  birthday2Status2 &&
                                  birthday3Status2 &&
                                  phoneNumberStatus2 &&
                                  isDate
                              ? Color(0xFF7A82A7)
                              : Color(0xF80364146),
                          width: 2), // 邊色寬度
                      color: firstNameStatus1 &&
                              idNumberStatus1 &&
                              emailAddressStatus1 &&
                              lastNameStatus1 &&
                              birthday1Status1 &&
                              birthday2Status1 &&
                              birthday3Status1 &&
                              phoneNumberStatus1 &&
                              firstNameStatus2 &&
                              idNumberStatus2 &&
                              emailAddressStatus2 &&
                              lastNameStatus2 &&
                              birthday1Status2 &&
                              birthday2Status2 &&
                              birthday3Status2 &&
                              phoneNumberStatus2 &&
                              isDate
                          ? Color(0xFF7A82A7)
                          : Colors.transparent, // 底色底色
                      borderRadius: new BorderRadius.circular((60)), // 圆角度
                    ),
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: firstNameStatus1 &&
                                    idNumberStatus1 &&
                                    emailAddressStatus1 &&
                                    lastNameStatus1 &&
                                    birthday1Status1 &&
                                    birthday2Status1 &&
                                    birthday3Status1 &&
                                    phoneNumberStatus1 &&
                                    firstNameStatus2 &&
                                    idNumberStatus2 &&
                                    emailAddressStatus2 &&
                                    lastNameStatus2 &&
                                    birthday1Status2 &&
                                    birthday2Status2 &&
                                    birthday3Status2 &&
                                    phoneNumberStatus2 &&
                                    isDate
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
                clickPage1: () {
                  if (!_orderStatus.getPage1Status) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderShoppingCode()));
                  }
                },
                clickPage2: () {
                  if (!_orderStatus.getPage2Status) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderPatch()));
                  }
                },
                colorStatus: colorStatus,
                beforStatus: beforColorStatus,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 50,
              child: InkWell(
                onTap: () {
                  _orderStatus.setPage2Status(true);
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

class DateWidget extends StatefulWidget {
  final int index;
  final String title;
  final String dateStr;
  final bool openStatus;
  final List<String> items;
  final VoidCallback upBtn;
  final Function(String value, int ontapIndex) selectedDate;
  DateWidget(
      {Key key,
      @required this.index,
      @required this.title,
      @required this.dateStr,
      @required this.openStatus,
      @required this.selectedDate,
      @required this.items,
      this.upBtn})
      : super(key: key);

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

//預設資料
List<String> defDataItem = [
  '10:00',
  '11:00',
  // '12:00',
  // '13:00',
  '14:00',
  '15:00',
  '16:00',
  // '17:00',
];

//點擊動畫展開下半部
class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: windows_width_small_size(w),
                color: Color(0xFF424648)),
          ),
        ),
        InkWell(
          onTap: widget.upBtn,
          // onTap: () {
          //   // setState(() {
          //   //   statusList[widget.index] = !statusList[widget.index];
          //   // });
          // },
          child: Container(
            color: widget.openStatus ? Colors.white : Color(0xFFCFDDF9),
            width: windowsSizeboxWidthSize(60),
            height: 40,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text(
                widget.dateStr,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: windows_width_small_size(w) - 2,
                      color: Color(0xFF424648)),
                ),
              ),
            ),
          ),
        ),
        //點擊後動畫展開
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 700),
          //讓沒元件的時候一樣高
          firstChild: Column(children: [
            for (int i = 0; i < 5; i++)
              Container(
                padding: EdgeInsets.all(0),
                width: windowsSizeboxWidthSize(60),
                height: 45,
              )
          ]),
          secondChild: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 5; i++)
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: windowsSizeboxWidthSize(60),
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: new BoxDecoration(
                        color: widget.items[widget.index] == defDataItem[i]
                            ? Color(0xFFCFDDF9)
                            : Colors.transparent,
                        border:
                            new Border.all(color: Color(0xFFCFDDF9), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "${defDataItem[i]}",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: windows_width_small_size(w) - 1,
                              color: Color(0xFF424648)),
                        ),
                      ),
                    ),
                    onTap: () {
                      widget.selectedDate(defDataItem[i], i);
                      //將點選的資料存到預設的list裡面
                      setState(
                          () => widget.items[widget.index] = defDataItem[i]);
                    },
                  )
              ]),
          crossFadeState: widget.openStatus
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ],
    );
  }
}

class LeftInput extends StatelessWidget {
  const LeftInput(
      {Key key,
      @required this.imageTitle,
      @required this.imagePath,
      @required this.firstNameTextEditingController,
      @required this.idNumberTextEditingController,
      @required this.emailAddressTextEditingController,
      @required this.lastNameTextEditingController,
      @required this.birthday1TextEditingController,
      @required this.birthday2TextEditingController,
      @required this.birthday3TextEditingController,
      @required this.phoneNumberTextEditingController})
      : super(key: key);
  final String imagePath;
  final String imageTitle;
  final TextEditingController firstNameTextEditingController;
  final TextEditingController idNumberTextEditingController;
  final TextEditingController emailAddressTextEditingController;
  final TextEditingController lastNameTextEditingController;
  final TextEditingController birthday1TextEditingController;
  final TextEditingController birthday2TextEditingController;
  final TextEditingController birthday3TextEditingController;
  final TextEditingController phoneNumberTextEditingController;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
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

    Widget edit(title, control) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: windows_width_small_size(w),
                  color: Color(0xFF424648)),
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

    return Row(
      children: [
        Column(
          children: [
            Text(
              imageTitle,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: windows_width_small_size(w),
                    color: Color(0xFF424648)),
              ),
            ),
            new Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: 150.0,
              height: 200.0,
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
                width: 210,
                child: edit("First Name", firstNameTextEditingController)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 210,
                child: edit("ID number", idNumberTextEditingController)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 210,
                child:
                    edit("Email Address", emailAddressTextEditingController)),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 210,
                child: edit("Last Name", lastNameTextEditingController)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Birthday",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF424648)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        edit2(birthday1TextEditingController),
                        SizedBox(
                          width: 7.5,
                        ),
                        edit2(birthday2TextEditingController),
                        SizedBox(
                          width: 7.5,
                        ),
                        edit2(birthday3TextEditingController),
                      ],
                    )
                  ],
                )),
            // Container(
            //     width: 200,
            //     child: edit("Birthday", firstNameTextEditingController)),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 210,
                child: edit("Phone Number", phoneNumberTextEditingController)),
          ],
        ),
      ],
    );
  }
}
