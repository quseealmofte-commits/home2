import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'image_picker_page.dart';
import 'slider_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          '${"home_hello".tr} ${widget.username}',
          style: const TextStyle(color: Colors.black),
        ),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              drawerItem(Icons.home, 'drawer_home'.tr),
              drawerItem(Icons.person, 'drawer_profile'.tr),

              ListTile(
                leading: const Icon(Icons.language),
                title: Text('drawer_lang'.tr),
                onTap: () {
                  if (Get.locale!.languageCode == 'ar') {
                    Get.updateLocale(const Locale('en', 'US'));
                  } else {
                    Get.updateLocale(const Locale('ar', 'EG'));
                  }
                },
              ),

              drawerItem(Icons.link, 'drawer_sub'.tr),
              drawerItem(Icons.group, 'drawer_friends'.tr),
              drawerItem(Icons.call, 'drawer_call'.tr),
              drawerItem(Icons.account_balance_wallet, 'drawer_tamar'.tr),
              drawerItem(Icons.exit_to_app, 'drawer_logout'.tr),
              drawerItem(Icons.share, 'drawer_share'.tr),
            ],
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'تطبيق YOUالشركه العمانيه ',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ImagePickerPage(),
                  ),
                );
              },
              child: Text('pick_image'.tr),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SliderPage(),
                  ),
                );
              },
              child: const Text('Slider'),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}
