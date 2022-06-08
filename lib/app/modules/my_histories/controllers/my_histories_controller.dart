import 'package:get/get.dart';
import 'package:intive_flutter_test/app/data/providers/myhistories_provider.dart';

// import '../../../data/providers/myhistories_provider.dart';

class MyHistoriesController extends GetxController {
  final MyHistoriesProvider provider = Get.find();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    provider.getAllMyhistories();
    super.onReady();
  }

  @override
  void onClose() {}
}
