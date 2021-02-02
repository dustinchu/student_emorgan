import 'package:flutter/material.dart';

class ProductBanner extends StatefulWidget {
  ProductBanner({Key key, this.scrollController}) : super(key: key);
  final ScrollController scrollController;
  @override
  _ProductBannerState createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        backround(w, h),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            padding: EdgeInsets.only(left: 26, top: 22, right: 26, bottom: 50),
            width: w / 3,
            height: h,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: Image.asset('assets/icon_up.png'),
                        onPressed: () => widget.scrollController.animateTo(.0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease))
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Text(
                  "Tear to Taste",
                  style: TextStyle(fontSize: 22, color: Color(0xFF364146)),
                ),
                Text(
                  "SHALI",
                  style: TextStyle(fontSize: 36, color: Color(0xFF364146)),
                ),
                SizedBox(
                  height: 36,
                ),
                Text(
                  "Human A Wears a tear patch",
                  style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
                ),
                Text(
                  "Human B wears taste salivary",
                  style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
                ),
                Expanded(child: Container()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                      child: InkWell(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Learn more",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF364146),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: Color(0xFF7A82A7),
                                    size: 22,
                                  )
                                ],
                              ),
                              Container(
                                width: 110,
                                height: 5,
                                color: Color(0xFF7A82A7),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Container(
                          child: Text("ORDER NOW"),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget backround(w, h) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backround.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: h,
      width: w,
      child: Center(
        child: Text(
          "111",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
