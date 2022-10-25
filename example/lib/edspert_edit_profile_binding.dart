import 'package:example/edspert_edit_profile_controller.dart';
import 'package:get/get.dart';

class EdspertEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EdspertEditProfileController());
  }
}
