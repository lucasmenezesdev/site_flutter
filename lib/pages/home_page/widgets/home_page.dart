import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/responsive.dart';

import 'package:siteflutter/pages/home_page/widgets/desktop/benefits_plan.dart';
import 'package:siteflutter/pages/home_page/widgets/desktop/signature_plan.dart';

import 'package:siteflutter/widgets/bottom_bar.dart';

import 'desktop/banner_desktop.dart';
import 'mobile/banner_mobile.dart';
import 'mobile/benefitsPlanMobile.dart';
import 'mobile/signaturePlanMobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? const CustomScrollView(slivers: [
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
          ])
        : const CustomScrollView(slivers: [
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
