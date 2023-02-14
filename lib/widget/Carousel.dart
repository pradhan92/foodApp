import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        viewportFraction: 1,
      ),
      items: [
        "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__480.jpg",
        "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062__480.jpg",
        "https://cdn.pixabay.com/photo/2016/03/05/20/02/sandwich-1238615__480.jpg",
        "https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505__480.jpg",
        "https://cdn.pixabay.com/photo/2018/10/14/18/29/meatloaf-3747129__480.jpg",
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              decoration: const BoxDecoration(color: Colors.amber),
              child: Image.network(
                i,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
