double line_left_width_size(double w) {
  if (w > 260)
    return w / 1.7;
  else if (w > 230)
    return w / 1.65;
  else if (w > 220)
    return w / 1.6;
  else if (w > 200)
    return w / 1.55;
  else if (w > 180)
    return w / 1.50;
  else if (w > 160)
    return w / 1.45;
  else if (w > 150)
    return w / 1.40;
  else if (w > 140)
    return w / 1.35;
  else if (w > 130)
    return w / 1.30;
  else if (w > 120)
    return w / 1.25;
  else if (w > 110) return w / 1.20;

  return w / 1.15;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

double line_width_right_size(double w) {
  if (w > 260)
    return w / 2.3;
  else if (w > 230)
    return w / 2.25;
  else if (w > 220)
    return w / 2.2;
  else if (w > 200)
    return w / 2.15;
  else if (w > 180)
    return w / 2.1;
  else if (w > 160)
    return w / 2.05;
  else if (w > 150)
    return w / 2;
  else if (w > 140)
    return w / 1.95;
  else if (w > 130)
    return w / 1.9;
  else if (w > 120)
    return w / 1.85;
  else if (w > 110) return w / 1.8;

  return w / 1.75;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

double line_width_right_size2(double w) {
  if (w > 260)
    return w / 1.8;
  else if (w > 230)
    return w / 1.75;
  else if (w > 220)
    return w / 1.7;
  else if (w > 200)
    return w / 1.65;
  else if (w > 180)
    return w / 1.6;
  else if (w > 160)
    return w / 1.55;
  else if (w > 150)
    return w / 1.5;
  else if (w > 140)
    return w / 1.45;
  else if (w > 130)
    return w / 1.4;
  else if (w > 120)
    return w / 1.35;
  else if (w > 110) return w / 1.3;

  return w / 1.25;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

//patch左一
double line_left1_patch_width_size(double w) {
  if (w > 350)
    return w / 0.97;
  else if (w > 280)
    return w / 0.95;
  else if (w > 240)
    return w / 0.93;
  else if (w > 220)
    return w / 0.90;
  else if (w > 200)
    return w / 0.87;
  else if (w > 180)
    return w / 0.84;
  else if (w > 160)
    return w / 0.81;
  else if (w > 140)
    return w / 0.78;

  return w / 0.76;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

// patch 左二
double line_left2_patch_width_size(double w) {
  if (w > 340)
    return w / 1.6;
  else if (w > 280)
    return w / 1.5;
  else if (w > 220)
    return w / 1.4;
  else if (w > 150) return w / 1.3;

  return w / 1.2;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

//又1
double line_right1_patch_width_size(double w) {
  if (w > 310)
    return w / 2.6;
  else if (w > 240)
    return w / 3;
  else if (w > 220) return w / 2.9;

  return w / 2.85;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}

//右2
double line_right2_patch_width_size(double w) {
  if (w > 160) return w / 1.4;

  return w / 1.3;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}
