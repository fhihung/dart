abstract class Hinh {
  double getChuVi();
  double getDienTich();
  void hienThiKichThuoc() {
    print("Hinh co Chu Vi la: ${getChuVi()}");
    print("$getDienTich()");
  }
}

class HinhTron extends Hinh {
  var r;
  HinhTron(double r) {
    this.r = r;
  }
  double getChuVi() {
    return 2 * 3.14 * r;
  }

  double getDienTich() {
    return 3.14 * r * r;
  }
}

class HinhChuNhat extends Hinh {
  var chieuDai;
  var chieuRong;
  HinhChuNhat(double chieuDai, double chieuRong) {}
  @override
  double getChuVi() {
    return 2.0 * (chieuDai + chieuRong);
  }

  @override
  double getDienTich() {
    return chieuDai * chieuRong;
  }
}

void main(List<String> args) {
  Hinh ht1 = HinhTron(5.5);
  Hinh ht2 = HinhChuNhat(3.3, 5);
}
