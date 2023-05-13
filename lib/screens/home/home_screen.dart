import 'package:flutter/material.dart';
// import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
// import 'package:shop_app/enums.dart';
import 'package:urean/components/drawer_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urean/constants.dart';
import 'package:urean/screens/categary/category_screen.dart';
import 'package:urean/screens/profile/profile_screen.dart';

import 'components/body.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//   static String routeName = "/home";
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Body(),
//       drawer: const DrawerWidget(),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
//     );
//   }
// }


class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
          () {
        _selectedIndex = index;
        navigateToScreens(index);
      },
    );
  }

  int currentIndex = 0;

  void navigateToScreens(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: const PreferredSize(
        //     preferredSize: Size.fromHeight(50.0),
        //     child: AppBarWidget(title: 'URean')),
        drawer: const DrawerWidget(),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            HomePageScreen(),
            CategoryPage(),
            ProfileScreen(),
           // AddToCartScreen(),
          ],
        ),
        // bottomNavigationBar: const BottomNavBarWidget(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.list),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dashcube),
              label: 'Dashboard',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kAppColour,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
