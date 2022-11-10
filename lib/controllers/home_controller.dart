import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  final RxInt count = 0.obs;
  void increment() => count.value++;
}
