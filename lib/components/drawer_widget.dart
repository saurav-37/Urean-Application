import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urean/screens/home/home_screen.dart';
import 'package:urean/screens/sign_in/sign_in_screen.dart';
import 'package:urean/screens/cart/cart_screen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _CreateDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            _CreateDrawerItem(
              icon: FontAwesomeIcons.user,
              text: 'Sign In',
              onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
            ),
            _CreateDrawerItem(
                icon: Icons.favorite_border,
                text: 'Wish List',
                onTap: () =>  Navigator.pushNamed(context, CartScreen.routeName),
            ),
            _CreateDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                onTap: () {}
                // => Navigator.pushNamed(context, ContactUsScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: const Center(
              child: Text(
            'Urean',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color: Color(0xFF5D9C59),
            ),
          )),
        ),
        const Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Icon(
              FontAwesomeIcons.leaf,
              size: 25.0,
              color: Color(0xFF5D9C59),
            )),
      ]));
}

class _CreateDrawerItem extends StatelessWidget {
  const _CreateDrawerItem(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);
  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: const Color(0xFF808080),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              text,
              style: const TextStyle(color: Color(0xFF484848)),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
