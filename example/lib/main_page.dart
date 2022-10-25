import 'package:edspert_account/presentation/pages/edit_profile_page.dart';
import 'package:edspert_account/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Features'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Profile Page'),
            subtitle: const Text(
                'https://www.figma.com/file/vht1hANiGM1sFld1zidoCG/Bootcamp-Flutter-Edspert?node-id=425%3A2045'),
            onTap: () => Get.toNamed(ProfilePage.routeName),
          ),
          ListTile(
            title: const Text('Edit Profile Page'),
            subtitle: const Text(
                'https://www.figma.com/file/vht1hANiGM1sFld1zidoCG/Bootcamp-Flutter-Edspert?node-id=426%3A2137'),
            onTap: () => Get.toNamed(EditProfilePage.routeName),
          ),
        ],
      ),
    );
  }
}
