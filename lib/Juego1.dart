import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Juego1 extends StatelessWidget {
  const Juego1({super.key, required String title, required String content});

  static final List<String> imageUrls = [
    "https://play-lh.googleusercontent.com/cTIy9PqjLYSdVAFPI2KhPUJB2hXMyyl5b_E8zHPjZ84GiFaT0Npxvq1BVT3s9Pd2GYxU=w526-h296",
    "https://play-lh.googleusercontent.com/X4uwzwEd--x-DfBJ96gY5Ys-p6WYJkLKRd7fA6SXHbMP6aXSUN3IWEXO5B5mzwGy2Rw=w526-h296-rw",
    "https://www.cevagraf.coop/comics/wp-content/uploads/2020/11/trucos-del-gacha-de-fate-grand-order-1529914528.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlsBn9PJsOcbERhiveCifayUqZ148Gr3anGqa1idCv1w&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fate Grand Order'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/game_icon.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'rese1',
                  style: TextStyle(fontSize: 16.0),
                ),
                const Text(
                  'info',
                  style: TextStyle(fontSize: 16.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Descargar(350MG)'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          CarouselSlider(
            items: imageUrls.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) => Image.network(
                  imageUrl,
                  fit: BoxFit.cover, 
                  width: 600, 
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 250.0,
              autoPlay: true, 
              enlargeCenterPage: true, 
              viewportFraction: 0.8, 
            ),
          ),
        ],
      ),
    );
  }
}

