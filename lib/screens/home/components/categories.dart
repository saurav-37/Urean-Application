import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/categoryimg/nano.webp", "text": "Nano"},
      {"image": "assets/categoryimg/seed.jpg", "text": "Seeds"},
      {"image": "assets/categoryimg/Garden.jpg", "text": "Gardening"},
      {"image": "assets/categoryimg/bio.jpg", "text": "Bio"},
      {"image": "assets/categoryimg/grow.jpg", "text": "Growth"},
      {"image": "assets/categoryimg/insec.jpg", "text": "Insecticides"},
      {"image": "assets/categoryimg/herb.png", "text": "Herbicides"},
      {"image": "assets/categoryimg/fung.jpg", "text": "Fungicides"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)), //20
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(

              image: categories[index]["image"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(80),//55
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(5)),//15
              height: getProportionateScreenWidth(150), // 55
              width: getProportionateScreenWidth(150), //55
              decoration: BoxDecoration(
                color: Colors.white,
                // color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(image!,
              fit: BoxFit.fitWidth,),
              // child: SvgPicture.asset(icon!),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
