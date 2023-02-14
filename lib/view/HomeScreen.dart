import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/widget/Carousel.dart';
import 'package:foodapp/widget/card_item.dart';
import 'package:foodapp/widget/gird_card.dart';
import 'package:foodapp/widget/listtile.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Carousel(),
          const CustomListTile(
              title: "Popular Chicken Product", subtitle: "Buy 2 Get 1 Free"),
          SizedBox(
           width: Get.size.width,
            height: 160,
            child: ListView(scrollDirection: Axis.horizontal,children: const [
                 CardItem(
                  title: "Chicken Burger",
                  price: "450",
                  image:
                      "https://media.istockphoto.com/id/1414304246/ja/%E3%82%B9%E3%83%88%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%88/%E3%83%81%E3%82%AD%E3%83%B3%E3%82%B5%E3%83%B3%E3%83%89%E3%82%A4%E3%83%83%E3%83%81.jpg?s=612x612&w=0&k=20&c=3YccC40XN9wyEme3t0IKOmi9kHGjG46DBrvC3IA_Fl0=",
                ),
                CardItem(
                  title: "Chicken Pizza",
                  price: "350",
                  image:
                      "https://media.istockphoto.com/photos/delicious-pizza-chicken-catupiry-flavor-served-on-a-wooden-board-made-picture-id1240612833?b=1&k=20&m=1240612833&s=170667a&w=0&h=0-FouxIL_1So_oYz5Cdguzag6JMteJ5sa5h2savcmyk=",
                ),
                CardItem(
                  title: "Chicken Rost",
                  price: "2350",
                  image:
                      "https://media.istockphoto.com/id/1399151905/photo/smoked-chicken-meat-on-wooden-table-restaurant-menu-dieting-cookbook-recipe.jpg?b=1&s=170667a&w=0&k=20&c=4upx3qNmle86iIV_wuVIfy_Tpb1fxV7whh3xCDhsAVI=",
                ),
                CardItem(
                  title: "Chicken Wings",
                  price: "550",
                  image:
                      "https://media.istockphoto.com/id/181313819/ja/%E3%82%B9%E3%83%88%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%88/%E3%83%81%E3%82%AD%E3%83%B3%E3%83%95%E3%83%A9%E3%82%A4.jpg?s=612x612&w=0&k=20&c=qvHVWJddWllShG-MLtnZLMPI20XCJACnQutrZgbrj9Y=",
                ),
                CardItem(
                  title: "Chicken Drum Stick",
                  price: "850",
                  image:
                      "https://media.istockphoto.com/id/1207976129/photo/close-up-fried-chickens-on-white-plate-isolated-on-table-look-yummy-and-yellow-gold-color.jpg?b=1&s=170667a&w=0&k=20&c=C_iY3qfohhaz6bss4MSVW8TpaAjbfRgz-rJteHvSkeM=",
                ),
                CardItem(
                  title: "Chicken Spring Roll",
                  price: "950",
                  image:
                      "https://media.istockphoto.com/id/187807124/ja/%E3%82%B9%E3%83%88%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%88/%E3%83%95%E3%83%A9%E3%82%A4%E3%83%89%E3%83%81%E3%82%AD%E3%83%B3%E3%81%AE%E5%85%A5%E3%81%A3%E3%81%9F%E7%9A%BF%E3%81%AE%E4%B8%8A%E3%81%AB%E6%9C%A8%E8%A3%BD%E3%81%AE%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB.jpg?s=612x612&w=0&k=20&c=rakIrKCdgKev9zTLRYwT3XNbrH3HPOsRRqWA1Q1-uow=",
                ),
            ],),
          ),
          const CustomListTile(
              title: "Upcoming Product", subtitle: "Coming Soon"),
          //    SizedBox(height: 150,
          //    child:  GridView.count(
          //   crossAxisCount: 4,
          //   children: const [
          //     GridCard(),
          //     GridCard(),
          //     GridCard(),
          //     GridCard(),
          //   ],
          // ),
          //),
          const CustomListTile(title: "Sale", subtitle: "Get 50 % OFF"),
                  Stack(
            children: [
              Container(
                width: Get.size.width,
                height: 200,
                child: Image.network("https://media.istockphoto.com/id/1125933960/ja/%E3%82%B9%E3%83%88%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%88/%E3%83%81%E3%82%AD%E3%83%B3%E3%83%90%E3%83%BC%E3%82%AC%E3%83%BC.jpg?s=612x612&w=0&k=20&c=jtoaopSwdLq132v0-Cp2btGTqS5Z9CIliERB0QRAkcs=",
                    fit: BoxFit.cover),
                //color: Colors.red,
              ),
              const Positioned(
                  bottom: 10, right: 10, child:  Text("Chicken Burger")),
              Positioned(
                  right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  )),
              Positioned(
                top: -20,
                left: Get.size.width * .40,
                child: const CircleAvatar(
                  radius: 40,
                  child: Text("T"),
                ),
              ),
            ],
          ),
]
)
)
)
);
  }
}
