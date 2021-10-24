import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:tgestor/modules/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
