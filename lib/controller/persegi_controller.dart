import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;

  final hasil = "".obs;
  final Color = Colors.red.obs;
  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi X $sisi = $hitung";
    Color.value = Colors.indigo;
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari 4 *($sisi) = $hitung";
    Color.value = Colors.red;
  }
}