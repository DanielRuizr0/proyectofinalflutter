import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class juego4 extends StatelessWidget {
const juego4({super.key, required String title, required String content});
 static final List<String> imageUrls = [
    "https://play-lh.googleusercontent.com/UXthP3vigcjEYmLCkIGkOrK_GKWWgiNqqcEIdBd74jTv63Y5cGMczDHYVAkwkU3kPSI=w526-h296-rw"
    "https://play-lh.googleusercontent.com/XVXu_GxhsF-W4ix0xWiN80o5OyUbcjrP7p_OBMR27yFN4IOH0wA6obfUCoxEXIG-coOy=w526-h296-rw"
    "https://play-lh.googleusercontent.com/wdj96ScSw54dqLvqeRhSTATRntzA1wX6z95njtdGsXBoiWXT088C6iA7TnLpfaiMmHU=w526-h296-rw"
    "https://play-lh.googleusercontent.com/V8S-C2ELi1n1gTjPYctW71NlndeQmKbq0QN_RKYN4JTY3Uk2MFuaxvwvWoFEMPxy2RA=w526-h296-rw"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dream Soccer'),
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