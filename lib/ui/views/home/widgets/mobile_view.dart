import 'package:flutter/material.dart';
import 'package:responsive_design/ui/common/app_colors.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile View'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: kcPrimaryColorDark,
            ),
          ),
          Expanded(
           
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) => Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: kcPrimaryColorDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
