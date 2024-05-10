import 'package:flutter/material.dart';
import 'package:proyectoflutter/Juego1.dart';
import 'package:proyectoflutter/Juego2.dart';
import 'package:proyectoflutter/Juego3.dart';
import 'package:proyectoflutter/Juego4.dart';
import 'carousel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
              child: ImageCarousel(), 
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Juego1(title: '', content: '',)),
                      );
                    },
                    child: Container( 
                      width: 50, 
                      height: 50, 
                      padding: const EdgeInsets.all(8.0), 
                      child: Image.asset(
                        'imagenes/juego1.png',
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const juego2(title: '', content: '',)),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'imagenes/juego2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const juego3(title: '', content: '',)),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'imagenes/juego3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const juego4(title: '', content: '',)),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'imagenes/juego4.png',
                        fit: BoxFit.cover,
                      ),
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