import 'package:flutter/material.dart';
import 'package:siteflutter/pages/home_page/widgets/mobile/banner_mobile.dart';
import 'package:siteflutter/pages/home_page/widgets/mobile/benefitsPlanMobile.dart';
import 'package:siteflutter/pages/home_page/widgets/mobile/signaturePlanMobile.dart';

import 'package:siteflutter/widgets/bottom_bar.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: BannerMobile(),
      ),
      SliverToBoxAdapter(
        child: SignaturePlanMobile(),
      ),
      SliverToBoxAdapter(
        child: BenefitsPlanMobile(),
      ),
      SliverToBoxAdapter(
        child: BottomBar(),
      ),
    ]);
  }
}
