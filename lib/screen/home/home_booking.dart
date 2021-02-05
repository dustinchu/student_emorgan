import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/menu_btn.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:flutter/material.dart';
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
    selectedKey = keys[0];
  }

  void setStatus(String value) {}
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 900;

    Widget edit(title, control) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: windows_width_small_size(w),
                color: Color(0xFF424648)),
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
                top: windowsSizeboxHightSize(50), left: 30, right: 10),
            height: h,
            width: w / 3,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book a Psychological Counseling",
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Professional Assistance",
                  style: TextStyle(
                      fontSize: windows_width_large_size(w),
                      color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Choose a time for counseling.",
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "It will be a new way to improve\na relationship.",
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "After a series of counselors,\nthe psychologist will decide if\nyou and your partner need to\ntransplant emorgans.\n",
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "If the answer is yes,\nyou’ll get a purchase code.\nYou can get back to here to\ndecide which emorgan is more\nsuitable for you and your partner.\n",
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
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
                top: windowsSizeboxHightSize(50)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Booking Detail",
                  style: TextStyle(
                    fontSize: windows_width_large_size(w),
                    color: Color(0xFF426248),
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
                  style: TextStyle(
                      fontSize: windows_width_medium_size(w),
                      color: Color(0xFF424648)),
                ),
                SizedBox(
                  height: windowsSizeboxHightSize(15),
                ),
                Text(
                  "2024",
                  style: TextStyle(
                      fontSize: windows_width_large_size(w),
                      color: Color(0xFF424648)),
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
                    ),
                    new DateWidget(
                      title: "Tue",
                      dateStr: "12/3",
                      index: 1,
                    ),
                    new DateWidget(
                      title: "Wed.",
                      dateStr: "12/4",
                      index: 2,
                    ),
                    new DateWidget(
                      title: "Thu.",
                      dateStr: "12/5",
                      index: 3,
                    ),
                    new DateWidget(
                      title: "Fri",
                      dateStr: "12/6",
                      index: 4,
                    ),
                    new DateWidget(
                      title: "Sat.",
                      dateStr: "12/7",
                      index: 5,
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
            bottom: 20,
            right: ((w / 3) * 2 / 4) - 20,
            child: Material(
              child: InkWell(
                onTap: () {},
                onHover: (value) {
                  print(value);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: new BoxDecoration(
                    border: new Border.all(
                        color: Color(0xFF364146), width: 4), // 邊色寬度
                    color: Colors.transparent, // 底色
                    borderRadius: new BorderRadius.circular((60)), // 圆角度
                  ),
                  child: Text("Book NOW",
                      style: TextStyle(
                          color: Color(0xFF364146),
                          fontSize: windows_width_small_size(w))),
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
  DateWidget(
      {Key key,
      @required this.index,
      @required this.title,
      @required this.dateStr})
      : super(key: key);

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

List<bool> statusList = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
];
List<String> clickString = [
  "",
  "",
  "",
  "",
  "",
  "",
];

List<String> items = [
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
          style: TextStyle(
              fontSize: windows_width_small_size(w), color: Color(0xFF424648)),
        ),
        InkWell(
          onTap: () {
            setState(() {
              statusList[widget.index] = !statusList[widget.index];
            });
          },
          child: Container(
            color: statusList[widget.index] ? Colors.white : Color(0xFFC8C1EF),
            width: windowsSizeboxWidthSize(60),
            height: 40,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text(
                widget.dateStr,
                style: TextStyle(
                    fontSize: windows_width_small_size(w) - 2,
                    color: Color(0xFF424648)),
              ),
            ),
          ),
        ),
        //點擊後動畫展開
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 700),
          //讓沒元件的時候一樣高
          firstChild: Column(
            children: items
                .map((e) => Container(
                      padding: EdgeInsets.all(0),
                      width: windowsSizeboxWidthSize(60),
                      height: 45,
                    ))
                .toList(),
          ),
          secondChild: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items
                .map((value) => InkWell(
                      child: Container(
                        padding: EdgeInsets.all(0),
                        width: windowsSizeboxWidthSize(60),
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: new BoxDecoration(
                          color: clickString[widget.index] == value
                              ? Color(0xFFC8C1EF)
                              : Colors.transparent,
                          border: new Border.all(
                              color: Color(0xFFC8C1EF), width: 2),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "$value",
                          style: TextStyle(
                              fontSize: windows_width_small_size(w) - 1,
                              color: Color(0xFF424648)),
                        ),
                      ),
                      onTap: () {
                        setState(() => clickString[widget.index] = value);
                      },
                    ))
                .toList(),
          ),
          crossFadeState: statusList[widget.index]
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ],
    );
  }
}
