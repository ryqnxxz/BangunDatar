import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Home Page with Flutter',
          style:
          TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal
          ),
        ),
      ),

      body: ListView(
        children:[
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => PersegiPage(),
                        ));
                  },
                  child: CustomMenu(imageAsset: "assets/persegi.png", title: 'Persegi')
              )
              ),

              Expanded(child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => PersegiPanjangPage(),
                        ));
                  },
                  child: CustomMenu(imageAsset:"assets/persegipanjang.png", title: 'Persegi Panjang'))),
            ],
          ),

          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => LingkaranPage(),
                        ));
                  },
                  child: CustomMenu(imageAsset:"assets/lingkarann.png", title: 'Lingkaran'))),

              Expanded(child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => SegitigaPage(),
                        ));
                  },
                  child: CustomMenu(imageAsset:"assets/segitiga1.png", title: 'Segitiga'))),
            ],
          ),
      ],),

    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
  super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      color: Colors.grey.shade300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 150, width: 100,),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'sans-serif',
            ),
          )
        ],
      ),
    );
  }
}