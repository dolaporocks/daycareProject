import 'package:flutter/material.dart';
import 'package:mydaycareproject/components/mobile_drawer.dart';
import 'package:mydaycareproject/responsive_views/desktop_screen.dart';
import 'package:mydaycareproject/responsive_views/mobile_screen.dart';
import 'package:mydaycareproject/responsive_views/responsive_layout.dart';
import 'package:mydaycareproject/responsive_views/tablet_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    return Scaffold(
        drawer: isMobile ? const Drawer(child: MobileDrawer()) : null,
        body: ResponsiveLayout(
            //want to find the best approach to ensuring that we are not having repetitive code.
            //building from the small screen to the larger size.
            mobileScreen: const MobileScreen(),
            tabletScreen: const TabletScreen(),
            desktopScreen: const DesktopScreen()));
  }
}
