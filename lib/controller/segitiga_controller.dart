import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  int alas = 0;
  int tinggi = 0;
  int a = 0;
  int b = 0;
  int c = 0;
  final hasil = "".obs;
  final Color = Colors.red.obs;

  void hitungLuas() {
    double hitung = (alas * tinggi) / 2;
    hasil.value = "Hasil Perhitungan luas dari ($alas x $tinggi)/2 = $hitung";
    Color.value = Colors.purple;
  }

  void hitungKeliling() {
    int hitung = a + b + c;
    hasil.value = "Hasil Perhitungan Keliling dari $a + $b + $c = $hitung";
    Color.value = Colors.red;
  }
}