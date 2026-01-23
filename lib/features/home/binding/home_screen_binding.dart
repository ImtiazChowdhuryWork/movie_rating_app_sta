import 'package:get/get.dart';
import 'package:movie_rating_application/features/home/data/controller/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
