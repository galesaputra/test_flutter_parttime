import 'package:get/get.dart';
import 'package:test_parttime/screen/form_api/form_api_screen.dart';
import 'package:test_parttime/screen/list_api/list_api_screen.dart';

class Navigation {
  toListApiScreen() {
    Get.to(
          () => ListApiScreen(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 300),
    );
  }

  toInputFormScreen() {
    Get.to(
          () => FormApiScreen(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 300),
    );
  }
}
