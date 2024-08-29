import 'package:flutter/material.dart';
import 'package:responseve_dash_board/adaptive_layout.dart';
import 'package:responseve_dash_board/widget/desktop_layout_widget.dart';

class DashBordView extends StatelessWidget {
  DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DesktopLayoutWidget()),
    );
  }
}
