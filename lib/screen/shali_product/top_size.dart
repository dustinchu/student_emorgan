double top_size(double windos_w ,double w) {
  if (windos_w > 340) return w ;
  else if (windos_w>300) return w+2;
  return w+3 ;
  // else if (w > 325) return 198;

  // else if (w > 500) return 15;
  // return 10;
}