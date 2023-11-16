import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage", style: TextStyle(color: Colors.blue)),
      backgroundColor: Color(0xFF2B2D51),
      ),
      body: ListView(
    children: const [
      Row(
        children: [
          Expanded(child: CustomMenu(imageAssets: "assets/persegi.png", title: "Persegi")),
          Expanded(child: CustomMenu(imageAssets: "assets/persegi.png", title: "Persegi")),
        ],
      ),
      Row(
        children: [
          Expanded(child: CustomMenu(imageAssets: "assets/segitiga.png", title: "Segitiga")),
          Expanded(child: CustomMenu(imageAssets: "assets/segitiga.png", title: "Segitiga")),
        ],
      ),
      Row(
        children: [
          Expanded(child: CustomMenu(imageAssets: "assets/persegipanjang.jpg",  title: "Persegi Panjang")),
          Expanded(child: CustomMenu(imageAssets: "assets/persegipanjang.jpg",  title: "Persegi Panjang")),
        ],
      ),
      Row(
        children: [
          Expanded(child: CustomMenu(imageAssets: "assets/trapesium.png", title: "Trapesium")),
          Expanded(child: CustomMenu(imageAssets: "assets/trapesium.png", title: "Trapesium")),
        ],
      ),
      ],
    ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade300,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAssets, height: 180,),
          Text(title, style:TextStyle(color:Colors.white),
          ),
        ],
      ));
  }
}