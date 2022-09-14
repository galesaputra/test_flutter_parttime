import 'package:get/get.dart';
import 'package:test_parttime/services/navigation.dart';

class HomeState extends GetxController {

  void toListApiScreen() {
    Navigation().toListApiScreen();
  }

  void toFormApiScreen() {
    Navigation().toInputFormScreen();
  }
}