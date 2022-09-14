import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_parttime/state/home_state.dart';
import 'package:test_parttime/utils/color.dart';
import 'package:test_parttime/widget/molecules/app_bar_widget.dart';
import 'package:test_parttime/widget/molecules/primary_button_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeState _control = Get.put(HomeState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: CAppBar(
          title: 'Home',
          action: Container(),
          leading: Container(),
          color: CColor.red,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            PrimaryButton(
              text: 'Get List',
              onTap: () => _control.toListApiScreen(),
            ),
            const SizedBox(
              height: 30,
            ),
            PrimaryButton(
              text: 'Input Form',
              onTap: ()=> _control.toFormApiScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
