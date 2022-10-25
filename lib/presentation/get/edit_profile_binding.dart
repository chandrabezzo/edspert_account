import 'package:edspert_account/presentation/get/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditProfileController());
  }
}
