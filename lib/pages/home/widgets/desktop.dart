import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/pages/home/widgets/banner_desktop.dart';
import 'package:siteflutter/pages/home/widgets/signature_plan.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: BannerDesktop(),
      ),
      SliverToBoxAdapter(
        child: SignaturePlan(),
      ),
    ]);
  }
}
