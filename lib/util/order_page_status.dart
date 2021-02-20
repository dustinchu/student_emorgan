class OrderPageStatus {
  static OrderPageStatus _orderPageStatus;

  OrderPageStatus._createInstance();
  factory OrderPageStatus() {
    if (_orderPageStatus == null) {
      _orderPageStatus = OrderPageStatus._createInstance();
    }
    return _orderPageStatus;
  }
  // static final OrderPageStatus _orderPageStatus =
  //     new OrderPageStatus._internal();
  // OrderPageStatus._internal();
  // static OrderPageStatus get instance => _orderPageStatus;

  bool page1 = true;
  bool page2 = true;

  bool get getPage1Status => page1;
  bool get getPage2Status => page2;

  void setPage1Status(bool status) {
    page1 = status;
  }

  void setPage2Status(bool status) {
    page2 = status;
  }
}
