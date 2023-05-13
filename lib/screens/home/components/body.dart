import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';
import 'package:urean/screens/home/components/top_promo_slider.dart';
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const TopPromoSlider(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const Products(),
            SizedBox(height: getProportionateScreenWidth(30)),
             const DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
