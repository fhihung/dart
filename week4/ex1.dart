abstract class BeMat {
  double getDienTich();
}

abstract class HinhKhoi {
  double getTheTich();
}

class HinhLapPhuong implements HinhKhoi, BeMat {
  var doDai;
  HinhLapPhuong({this.doDai = 0});
  @override
  double getDienTich() => doDai * 6 * doDai;
  @override
  double getTheTich() => doDai * doDai * doDai;
}

void main() {
  BeMat a = HinhLapPhuong(doDai: 8.0);
  //HinhKhoi b = HinhLapPhuong(doDai: 9);
  print(a.getDienTich());
  //print(b.getTheTich());
}
