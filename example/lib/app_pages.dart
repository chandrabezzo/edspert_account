import 'package:edspert_account/presentation/get/profile_binding.dart';
import 'package:edspert_account/presentation/pages/edit_profile_page.dart';
import 'package:edspert_account/presentation/pages/profile_page.dart';
import 'package:example/edspert_edit_profile_binding.dart';
import 'package:example/edspert_edit_profile_page.dart';
import 'package:example/main_page.dart';
import 'package:get/get.dart';

final appPages = [
  GetPage(
    name: MainPage.routeName,
    page: () => const MainPage(),
  ),
  GetPage(
    name: ProfilePage.routeName,
    page: () => const ProfilePage(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: EditProfilePage.routeName,
    page: () => const EdspertEditProfilePage(),
    binding: EdspertEditProfileBinding(),
  ),
];
