import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Segitiga Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //bagian image
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/segitiga1.png",
                      height: 100,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Segitiga',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //end bagian image

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                'Segitiga adalah sebuah bentuk geometri dua dimensi yang terdiri dari tiga sisi dan tiga sudut. Setiap segitiga memiliki tiga titik sudut dan tiga titik sudut tersebut dihubungkan oleh tiga garis lurus yang disebut sebagai sisi-sisi segitiga. Jumlah total sudut dalam segitiga selalu sama, yaitu 180 derajat. Segitiga merupakan bentuk dasar dalam geometri dan dapat memiliki berbagai jenis berdasarkan panjang sisi-sisinya atau besaran sudut-sudutnya', style:
              TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _segitigaController.alas = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Alas segitiga",
                          hintText: "Masukkan alas",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _segitigaController.tinggi = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Tinggi segitiga",
                          hintText: "Masukkan tinggi",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _segitigaController.a = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Nilai A segitiga",
                          hintText: "Masukkan nilai A",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _segitigaController.b = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Nilai B segitiga",
                          hintText: "Masukkan nilai B",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _segitigaController.c = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Nilai c segitiga",
                          hintText: "Masukkan nilai c",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              _segitigaController.hitungLuas();
                            },
                            child: Text(
                              'Hitung Luas',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              _segitigaController.hitungKeliling();
                            },
                            child: Text(
                              'Hitung Keliling',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),

              child: Column(
                children: [
                  Text(
                    'Perhitungan :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Obx(
                          () => Text(
                        _segitigaController.hasil.value,
                        style: TextStyle(
                          color: _segitigaController.Color.value,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Text(
                      '==============================================='
                  ),

                  Text(
                    'Thank You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}