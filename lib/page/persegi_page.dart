import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Persegi Page',
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //bagian image
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/persegi.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Persegi',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
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
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                  'Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.',
              style: TextStyle(color: Colors.white,
                fontSize: 15,
              ),),),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.all(15.0),
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
                        _persegiController.sisi = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi persegi",
                          hintText: "Masukkan Sisi",
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
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              _persegiController.hitungLuas();
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
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              _persegiController.hitungKeliling();
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
                    'Hasil',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Obx(
                          () => Text(
                        _persegiController.hasil.value,
                        style: TextStyle(
                          color: _persegiController.Color.value,
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
                      color: Colors.red,
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