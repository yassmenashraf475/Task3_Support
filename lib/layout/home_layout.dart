import 'package:flutter/material.dart';
import 'package:task_support_3/modules/home/home_screen.dart';
import 'package:task_support_3/modules/offers/offers_screen.dart';
import 'package:task_support_3/modules/orders/orders_screen.dart';
import 'package:task_support_3/modules/profile/profile_screen.dart';
import 'package:task_support_3/modules/vouchers/vouchers_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0;

  List<Widget> screens=[
    HomeScreen(),
    OrdersScreen(),
    VouchersScreen(),
    OffersScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange[800],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.discount_outlined,
              ),
              label: 'Vouchers',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_add,
              ),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
              ),
              label: 'Profile',
            ),

          ]
      ),
    );
  }
}
