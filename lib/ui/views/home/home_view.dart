import 'package:flutter/material.dart';
import 'package:responsive_design/ui/common/ui_helpers.dart';
import 'package:responsive_design/ui/views/home/widgets/mobile_view.dart';
import 'package:responsive_design/ui/views/home/widgets/web_view.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body:LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < mobileSize) {
            return const MobileView();
          }
          else{
            return const WebView();
          }
        },
      )
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
