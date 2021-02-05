double line_page1_left_width_size(double w) {
  if (w > 220)
    return w / 2.2;
  else if (w > 180)
    return w / 2.05;
  else if (w > 160)
    return w / 1.95;
  else if (w > 140)
    return w / 1.85;

  return w / 1.8;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}
double line_page1_lef2_width_size(double w) {
  if (w > 300)
    return w / 1.6;
  else if (w > 280)
    return w / 1.5;
  else if (w > 240)
    return w / 1.45;
  else if (w > 220)
    return w / 1.4;

  return w / 1.3;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}
double line_page1_width_right1_size(double w) {
  if (w > 220)
    return w / 1.95;
  else if (w > 200)
    return w / 2;
  else if (w > 170) return w / 1.9;

  return w / 1.8;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}
double line_page1_width_right2_size(double w) {
  if (w > 320)
    return w / 2.3;
  else if (w > 300)
    return w / 2.4;
  else if (w > 260)
    return w / 2.55;
  else if (w > 230) return w / 2.65;

  return w / 2.8;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}
