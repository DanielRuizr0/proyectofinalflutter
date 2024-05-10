import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class juego2 extends StatelessWidget {
   const juego2({super.key, required String title, required String content});

   static final List<String> imageUrls = [
    "https://media.contentapi.ea.com/content/dam/need-for-speed/nfs-heat/images/2019/08/nsfh-screenshot-polestar-aug-14.jpg.adapt.crop16x9.652w.jpg"
    "https://i.ytimg.com/vi/Mc985c8NdxY/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLABOT4LpaS3r6asRS2GukFkJKLY9g"
    "https://media.contentapi.ea.com/content/dam/need-for-speed/nfs-heat/images/2019/08/nsfh-screenshot-back-shot-aug-19.jpg.adapt.crop16x9.652w.jpg"
    "https://hips.hearstapps.com/hmg-prod/images/nsfh-screenshot-gameplay-night-aug-19-jpg-adapt-crop16x9-818p-1566402547.jpg?crop=1.00xw:0.892xh;0,0.108xh&resize=980:*"
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Need For Spead Heat'),
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
                  child: const Text('Descargar(500GM)'),
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