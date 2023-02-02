import 'dart:ffi';

class SinhVien {
  var maSinhVien;
  var hoTen;
  var gioiTinh;

  void hienThiThongTin() {
    print("Ma sinh vien: $maSinhVien ");
    print("Ho va Ten: $hoTen");
    print("Ma sinh vien: ${gioiTinh ? "Nam" : "Nu"} ");
  }

  SinhVien() {
    maSinhVien = 21010598;
    hoTen = "Nguyen Phi Hung";
    gioiTinh = true;
  }

  // SinhVien(SinhVien s) {
  //   this.maSinhVien = s.maSinhVien;
  //   this.hoTen = s.hoTen;
  //   this.gioiTinh = s.gioiTinh
  // }
  SinhVien.khoiTaoGiaTri(int maSinhVien, String hoTen, bool gioiTinh) {
    this.maSinhVien = maSinhVien;
    this.hoTen = hoTen;
    this.gioiTinh = gioiTinh;
  }
  set ident(String maSinhVien) {
    this.maSinhVien = maSinhVien;
  }

  set name(String hoTen) {
    this.hoTen = hoTen;
  }

  void set sex(bool gioiTinh) {
    this.gioiTinh = gioiTinh;
  }

  int get identify {
    return maSinhVien;
  }

  String get name {
    return hoTen;
  }

  bool get sex {
    return gioiTinh;
  }
}

class SinhVienDaiCuong extends SinhVien {
  var diemDaiCuong;
  @override
  void hienThiThongTin() {
    super.hienThiThongTin();
    print("Diem dai cuong $diemDaiCuong");
  }

  void hienThiThongTinCoBan() {
    print("Ma sinh vien: $maSinhVien ");
    print("Ho va Ten: $hoTen");
    print("Ma sinh vien: ${gioiTinh ? "Nam" : "Nu"} ");
    print("Diem dai cuong $diemDaiCuong");
  }

  SinhVienDaiCuong() {}
  SinhVienDaiCuong.khoiTaoGiaTri(
      int maSinhVien, String hoTen, bool gioiTinh, double diemDaiCuong) {
    this.maSinhVien = maSinhVien;
    this.hoTen = hoTen;
    this.gioiTinh = gioiTinh;
    this.diemDaiCuong = diemDaiCuong;
  }
}

void main(List<String> args) {
  var s = new SinhVien();
  // var sv = new SinhVien.khoiTaoGiaTri();
  var svv = new SinhVienDaiCuong();
  s
    ..ident = "21010598"
    ..name = "Nguyen Phi Hung"
    ..sex = true;
  svv
    ..name = "Hungdz"
    ..sex = true
    ..diemDaiCuong = 3.3; //khong co ; nhe

  s.hienThiThongTin();
  print("------------------");
  svv.hienThiThongTinCoBan();
}
