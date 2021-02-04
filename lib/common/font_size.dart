double windows_width_large_size(double w) {
  if (w > 1200)
    return 36;
  else if (w > 1100)
    return 35;
  else if (w > 1000)
    return 33;
  else if (w > 900)
    return 31;
  else if (w > 800)
    return 29;
  else if (w > 700)
    return 27;
  else if (w > 600)
    return 25;
  else if (w > 500) return 23;
  return 20;
}
//中22
double windows_width_medium_size(double w) {
  if (w > 1200)
    return 22;
  else if (w > 1100)
    return 21;
  else if (w > 1000)
    return 20;
  else if (w > 900)
    return 19;
  else if (w > 800)
    return 18;
  else if (w > 700)
    return 17;
  else if (w > 600)
    return 16;
  else if (w > 500) return 15;
  return 10;
}

//小16
double windows_width_small_size(double w) {
  if (w > 1200)
    return 16;
  else if (w > 1100)
    return 15;
  else if (w > 1000)
    return 14;
  else if (w > 900)
    return 13;
  else if (w > 800)
    return 12;
  else if (w > 700)
    return 11;
  else if (w > 600)
    return 10;
  else if (w > 500) return 9;
  return 5;
}



double product_width_medium_size(double w) {
  if (w > 1200)
    return 20;
  else if (w > 1100)
    return 19;
  else if (w > 1000)
    return 18;
  else if (w > 900)
    return 17;
  else if (w > 800)
    return 16;
  else if (w > 700)
    return 15;
  else if (w > 600)
    return 14;
  else if (w > 500) return 13;
  return 10;
}

//小14
double product_width_small_size(double w) {
  if (w > 1200)
    return 14;
  else if (w > 1100)
    return 13;
  else if (w > 1000)
    return 12;
  else if (w > 900)
    return 11;
  else if (w > 800)
    return 10;
  else if (w > 700)
    return 9;
  else if (w > 600)
    return 8;
  else if (w > 500) return 7;
  return 5;
}