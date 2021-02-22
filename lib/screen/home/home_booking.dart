import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/menu_btn.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';

class HomeBooking extends StatefulWidget {
  HomeBooking({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  _HomeBookingState createState() => _HomeBookingState();
}

String selectedKey;
String selectedItem;
String initialValue;

class _HomeBookingState extends State<HomeBooking>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  bool firstName = false;
  bool lastName = false;
  bool address = false;
  bool number = false;
  bool partnerFirstName = false;
  bool partnerLastName = false;
  bool isDate = false;
  //如果週日 之後的日期都要+1 預設+0
  int dateIndex = 0;
  TextEditingController firstNameTextEditingController;
  TextEditingController lastNameTextEditingController;
  TextEditingController emailAddressTextEditingController;
  TextEditingController phoneNumberTextEditingController;
  TextEditingController partnerFirstNameTextEditingController;
  TextEditingController partnerLastNameTextEditingController;
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

  //得到日期
  String getDateStr(int addDate) {
    String date = DateFormat("E.", "en_US")
        .format(DateTime.now().add(new Duration(days: addDate + dateIndex)));
    if (date == "Sun.") {
      date = DateFormat("E.", "en_US").format(
          DateTime.now().add(new Duration(days: addDate + dateIndex + 1)));
      dateIndex = 1;
    }

    return date;
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
      firstNameTextEditingController.text = "";
      lastNameTextEditingController.text = "";
      emailAddressTextEditingController.text = "";
      phoneNumberTextEditingController.text = "";
      partnerFirstNameTextEditingController.text = "";
      partnerLastNameTextEditingController.text = "";

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
  }

  @override
  void initState() {
    super.initState();
    firstNameTextEditingController = TextEditingController();
    lastNameTextEditingController = TextEditingController();
    emailAddressTextEditingController = TextEditingController();
    phoneNumberTextEditingController = TextEditingController();
    partnerFirstNameTextEditingController = TextEditingController();
    partnerLastNameTextEditingController = TextEditingController();
    selectedKey = keys[0];

    firstNameTextEditingController.addListener(() {
      if (firstNameTextEditingController.text.length > 0) {
        setState(() {
          firstName = true;
        });
      } else {
        setState(() {
          firstName = false;
        });
      }
    });
    lastNameTextEditingController.addListener(() {
      if (lastNameTextEditingController.text.length > 0) {
        setState(() {
          lastName = true;
        });
      } else {
        setState(() {
          lastName = false;
        });
      }
    });
    emailAddressTextEditingController.addListener(() {
      if (emailAddressTextEditingController.text.length > 0) {
        setState(() {
          address = true;
        });
      } else {
        setState(() {
          address = false;
        });
      }
    });
    phoneNumberTextEditingController.addListener(() {
      if (phoneNumberTextEditingController.text.length > 0) {
        setState(() {
          number = true;
        });
      } else {
        setState(() {
          number = false;
        });
      }
    });
    partnerFirstNameTextEditingController.addListener(() {
      if (partnerFirstNameTextEditingController.text.length > 0) {
        setState(() {
          partnerFirstName = true;
        });
      } else {
        setState(() {
          partnerFirstName = false;
        });
      }
    });
    partnerLastNameTextEditingController.addListener(() {
      if (partnerLastNameTextEditingController.text.length > 0) {
        setState(() {
          partnerLastName = true;
        });
      } else {
        setState(() {
          partnerLastName = false;
        });
      }
    });
  }

  void setStatus(String value) {}
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1400;

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
              cursorColor: Color(0xFFC8C1EF),
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

    Widget about() {
      return Positioned(
          left: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.only(
                top: windowsSizeboxHightSize(200), left: 30, right: 10),
            height: h,
            width: w / 3,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(child: Container()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Book a Psychological Counseling",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: windows_width_small_size(w),
                                color: Color(0xFF364146)))
                        // style: TextStyle(
                        //     fontSize: windows_width_small_size(w),
                        //     color: Color(0xFF364146)),
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Professional Assistance",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_large_size(w),
                            color: Color(0xFF364146)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Choose a time for counseling.",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF364146)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "It will be a new way to improve\na relationship.",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF364146)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "After a series of counselors,\nthe psychologist will decide if\nyou and your partner need to\ntransplant emorgans.\n",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF364146)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "If the answer is yes,\nyou’ll get a purchase code.\nYou can get back to here to\ndecide which emorgan is more\nsuitable for you and your partner.\n",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF364146)),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
              ],
            ),
          ));
    }

    List<Widget> rowEditText1 = [
      Expanded(child: edit("Your First Name", firstNameTextEditingController)),
      SizedBox(
        width: 20,
      ),
      Expanded(child: edit("Your Last Name", lastNameTextEditingController)),
    ];
    List<Widget> rowEditText2 = [
      Expanded(child: edit("Email Address", emailAddressTextEditingController)),
      SizedBox(
        width: 20,
      ),
      Expanded(child: edit("Phone Number", phoneNumberTextEditingController)),
    ];
    List<Widget> rowEditText3 = [
      Expanded(
          child: edit(
              "Partner's First Name", partnerFirstNameTextEditingController)),
      SizedBox(
        width: 20,
      ),
      Expanded(
          child: edit(
              "Partner's Last Name", partnerLastNameTextEditingController)),
    ];

    //輸入頁
    Widget input() {
      return Positioned(
        // /3=白色頁面超過白色頁面為起點
        left: w / 3,
        top: 0,
        child: Container(
          height: h,
          width: w / 3 * 2,
          child: Container(
            padding: EdgeInsets.only(
                left: windowsPaddingWidthSize(((w / 3) * 2 / 4) - 20),
                right: windowsPaddingWidthSize(((w / 3) * 2 / 4) - 20),
                top: windowsSizeboxHightSize(200)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Booking Detail",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: windows_width_large_size(w),
                      color: Color(0xFF424648),
                    ),
                  ),
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(30),
                ),
                Row(children: rowEditText1),
                SizedBox(
                  height: windowsSizeboxHightSize(20),
                ),
                Row(children: rowEditText2),
                SizedBox(
                  height: windowsSizeboxHightSize(20),
                ),
                Container(
                  height: 2,
                  width: w,
                  color: Colors.white,
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(20),
                ),
                Row(children: rowEditText3),
                SizedBox(
                  height: windowsSizeboxHightSize(20),
                ),
                Container(
                  height: 2,
                  width: w,
                  color: Colors.white,
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(20),
                ),
                Text(
                  "Booking Date",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: windows_width_medium_size(w),
                        color: Color(0xFF424648)),
                  ),
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(15),
                ),
                Text(
                  "2024",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: windows_width_large_size(w),
                        color: Color(0xFF424648)),
                  ),
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new DateWidget(
                      title: "Mon.",
                      dateStr: "12/2",
                      index: 0,
                      openStatus: statusList[0],
                      upBtn: dateBtn0,
                      selectedDate: selected0,
                      items: selectedList[0],
                    ),
                    new DateWidget(
                      title: "Tue",
                      dateStr: "12/3",
                      index: 1,
                      openStatus: statusList[1],
                      upBtn: dateBtn1,
                      selectedDate: selected1,
                      items: selectedList[1],
                    ),
                    new DateWidget(
                      title: "Wed.",
                      dateStr: "12/4",
                      index: 2,
                      openStatus: statusList[2],
                      upBtn: dateBtn2,
                      selectedDate: selected2,
                      items: selectedList[2],
                    ),
                    new DateWidget(
                      title: "Thu.",
                      dateStr: "12/5",
                      index: 3,
                      openStatus: statusList[3],
                      upBtn: dateBtn3,
                      selectedDate: selected3,
                      items: selectedList[3],
                    ),
                    new DateWidget(
                      title: "Fri",
                      dateStr: "12/6",
                      index: 4,
                      openStatus: statusList[4],
                      upBtn: dateBtn4,
                      selectedDate: selected4,
                      items: selectedList[4],
                    ),
                    new DateWidget(
                      title: "Sat.",
                      dateStr: "12/7",
                      index: 5,
                      openStatus: statusList[5],
                      upBtn: dateBtn5,
                      selectedDate: selected5,
                      items: selectedList[5],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

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
        children: [
          about(),
          input(),
          Positioned(
            bottom: 50,
            right: 50,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (firstName &&
                      lastName &&
                      address &&
                      number &&
                      partnerFirstName &&
                      partnerLastName &&
                      isDate) success();
                },
                // onHover: (value) {
                //   print(value);
                // },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: new BoxDecoration(
                    border: new Border.all(
                        color: firstName &&
                                lastName &&
                                address &&
                                number &&
                                partnerFirstName &&
                                partnerLastName &&
                                isDate
                            ? Color(0xFF7A82A7)
                            : Color(0xF80364146),
                        width: 2), // 邊色寬度
                    color: firstName &&
                            lastName &&
                            address &&
                            number &&
                            partnerFirstName &&
                            partnerLastName &&
                            isDate
                        ? Color(0xFF7A82A7)
                        : Colors.transparent, // 底色底色
                    borderRadius: new BorderRadius.circular((60)), // 圆角度
                  ),
                  child: Text(
                    "Book NOW",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: firstName &&
                                  lastName &&
                                  address &&
                                  number &&
                                  partnerFirstName &&
                                  partnerLastName &&
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
              top: 20,
              right: 20,
              child: IconButton(
                icon: Image.asset('assets/icon_up.png'),
                onPressed: widget.upBtn,
              )),
        ],
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
  '12:00',
  '13:00',
  '14:00',
  '15:00',
  '16:00',
  '17:00',
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
            color: widget.openStatus ? Colors.white : Color(0xFFC8C1EF),
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
            for (int i = 0; i < 7; i++)
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
                for (int i = 0; i < 7; i++)
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: windowsSizeboxWidthSize(60),
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: new BoxDecoration(
                        color: widget.items[widget.index] == defDataItem[i]
                            ? Color(0xFFC8C1EF)
                            : Colors.transparent,
                        border:
                            new Border.all(color: Color(0xFFC8C1EF), width: 2),
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
