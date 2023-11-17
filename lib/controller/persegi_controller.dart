import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;

  void hitungLuas(){
     int hitung = sisi*sisi;
     hasil.value = "Hasil Perhitungan luas dari $sisi * $sisi = $hitung";
  }

  void hitungKeliling(){
    int hitung = 4*sisi;
    hasil.value = "Hasil Perhitungan Keliling dari 4 x $sisi = $hitung";
  }
}