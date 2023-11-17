import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegipanjangController extends GetxController{
  int panjang =0;
  int lebar =0;

  final hasil = "".obs;
  final Color = Colors.red.obs;
  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan luas dari $panjang X $lebar = $hitung";
    Color.value = Colors.indigo;
  }

  void hitungKeliling(){
    int hitung = 2 * (panjang+lebar);
    hasil.value = "Hasil Perhitungan Keliling dari 2 *($panjang + $lebar) = $hitung";
    Color.value = Colors.red;
  }
}