void main(List<String> args) {
  dynamic sum = 0;
  dynamic countchan = 0;
  dynamic countle = 0;
  dynamic max = 0;

  var danhSach = [1, 2, 3, 5, 7, 9, 6];
  dynamic min = danhSach[0];

  for (var i = 0; i < 7; i++) {
    sum = sum + danhSach[i];
    if (danhSach[i] % 2 == 0)
      countchan++;
    else
      countle++;
    if (max <= danhSach[i]) max = danhSach[i];
    if (min >= danhSach[i]) min = danhSach[i];
  }
  print(sum);
  print("Co $countchan so chan");
  print("Co $countle so le");
  print("So lon nhat la $max");
  print("So lon nhat la $min");
}
