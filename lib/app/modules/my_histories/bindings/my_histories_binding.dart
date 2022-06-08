import 'package:get/get.dart';
import 'package:intive_flutter_test/app/data/providers/myhistories_provider.dart';

import '../controllers/my_histories_controller.dart';

class MyHistoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => MyHistoriesProvider());
    Get.put(() => MyHistoriesController());
  }
}
