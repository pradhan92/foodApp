import 'package:flutter/material.dart';
import 'package:foodapp/view/CouponsScreen.dart';
import 'package:foodapp/view/Delivery.dart';
import 'package:foodapp/view/HomeScreen.dart';
import 'package:foodapp/view/Menu.dart';
import 'package:foodapp/view/Order.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_add_alt_1_outlined,
                size: 40,
              ),
              title: const Text('Profile',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 40,
              ),
              title: const Text('settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                size: 40,
              ),
              title: const Text('logout',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Pradhan Store',
            style: TextStyle(color: Colors.white, fontSize: 25)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          showSelectedLabels: true,
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          unselectedItemColor: Color.fromARGB(255, 156, 197, 232),
          onTap: (index) {
            print(index);
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items:const[
             BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green),
             BottomNavigationBarItem(
                icon: Icon(Icons.breakfast_dining),
                label: 'Coupons',
                backgroundColor: Colors.green),
             BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Menu',
                backgroundColor: Colors.green),
                BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining),
                label: 'Delivery',
                backgroundColor: Colors.green),
                BottomNavigationBarItem(
                icon: Icon(Icons.border_outer_rounded),
                label: 'Order',
                backgroundColor: Colors.green),
          ]),
      body: selectedIndex == 0
          ? const HomeScreen()
          : selectedIndex == 1
              ? const CouponsScreen()
          : selectedIndex == 2
              ? const MenuScreen()
          : selectedIndex == 3
              ? const DeliveryScreen()
              : const OderScreen(),
    ));
  }
}
