import 'package:flutter/material.dart';

import 'package:siteflutter/pages/home_page/widgets/desktop/benefits_plan.dart';
import 'package:siteflutter/pages/home_page/widgets/desktop/signature_plan.dart';

import 'package:siteflutter/widgets/bottom_bar.dart';

import 'banner_desktop.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: BannerDesktop(),
      ),
      SliverToBoxAdapter(
        child: SignaturePlan(),
      ),
      SliverToBoxAdapter(
        child: BenefitsPlan(),
      ),
      SliverToBoxAdapter(
        child: BottomBar(),
      ),
    ]);
  }
}
