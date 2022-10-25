import 'package:edspert_account/presentation/get/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage<C extends EditProfileController> extends GetView<C> {
  static const routeName = '/profile/edit';
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Edit Akun'),
      centerTitle: true,
      backgroundColor: const Color(0xff3A7FD5),
    );
  }

  Widget buildBody(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Data Diri',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Nama Lengkap',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextField(
            readOnly: true,
            controller: controller.etGender,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.arrow_drop_down),
              labelText: 'Jenis Kelamin',
              hintText: 'Pilih Jenis Kelamin',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onTap: () => Get.bottomSheet(chooseGender(context)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Kelas',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Sekolah',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ElevatedButton(
            onPressed: () => onUpdateData(),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3A7FD5),
            ),
            child: const Text('Perbarui Data'),
          ),
        ),
      ],
    );
  }

  void onUpdateData() {
    Get.back();
  }

  Widget chooseGender(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Laki - laki'),
            onTap: () => controller.onSelectedGender(
              value: true,
              onSelected: () => Get.back(),
            ),
          ),
          const Divider(color: Colors.grey),
          ListTile(
            title: const Text('Perempuan'),
            onTap: () => controller.onSelectedGender(
              value: false,
              onSelected: () => Get.back(),
            ),
          ),
        ],
      ),
    );
  }
}
