double windowsPaddingWidthSize(double w,double w1) {
  if (w > 1200)
    return w1 - 4;
  else if (w > 1100)
    return w1 - 8;
  else if (w > 1000)
    return w1 - 16;
  else if (w > 900)
    return w1 - 24;
  else if (w > 800)
    return w1 - 32;
  else if (w > 700)
    return w1 - 40;
  else if (w > 600)
    return w1 - 48;
  else if (w > 500) return w1-56;
  return w1 - 64;
}
double windowsSizeboxWidthSize(double w) {
  if (w > 1200)
    return w - 1;
  else if (w > 1100)
    return w - 2;
  else if (w > 1000)
    return w - 3;
  else if (w > 900)
    return w - 6;
  else if (w > 800)
    return w - 7;
  else if (w > 700)
    return w - 8;
  else if (w > 600)
    return w - 9;
  else if (w > 500) return -10;
  return w - 11;
}
double windowsSizeboxHightSize(double w) {
  if (w > 1200)
    return w - 1;
  else if (w > 1100)
    return w - 2;
  else if (w > 1000)
    return w - 3;
  else if (w > 900)
    return w - 6;
  else if (w > 800)
    return w - 7;
  else if (w > 700)
    return w - 8;
  else if (w > 600)
    return w - 9;
  else if (w > 500) return -10;
  return w - 11;
}
double windowsHightSize(double h){
  if (h > 1200)
    return h - 1;
  else if (h > 1100)
    return h - 2;
  else if (h > 1000)
    return h - 3;
  else if (h > 900)
    return h - 6;
  else if (h > 800)
    return h - 7;
  else if (h > 700)
    return h - 8;
  else if (h > 600)
    return h - 9;
  else if (h > 500) return -10;
  return h - 11;
}