import 'package:app1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:app1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: Drawer(),
        );
      },
    );
  }
}
