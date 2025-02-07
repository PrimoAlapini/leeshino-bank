import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageWidget();
}


class _HomePageWidget extends State<HomePage> {

  final List<String> imagePaths = [
      'assets/images/image1.png',
      'assets/images/image2.png',
      'assets/images/flutter4.jpg',
      'assets/images/flutter5.png',
      'assets/images/flutter6.jpg',
    ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
            items: imagePaths.map((imagePath) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath), // Remplace par chaque image de la liste
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height, // Prend toute la hauteur de l'écran
              viewportFraction: 1.0, // Un seul élément visible à la fois
              autoPlay: true, // Défilement automatique
              autoPlayInterval: Duration(seconds: 3), // Intervalle entre les défilements
            ),
          );
  }
}
          
