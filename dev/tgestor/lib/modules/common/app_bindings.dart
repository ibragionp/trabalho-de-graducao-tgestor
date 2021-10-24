import 'package:get/get.dart';
import 'package:tgestor/modules/login/login_bindings.dart';
import 'package:tgestor/modules/sign_up/sign_up_bindings.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    LoginBinding().dependencies();
    SignUpBinding().dependencies();
  }
}
