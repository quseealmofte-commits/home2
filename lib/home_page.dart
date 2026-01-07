import 'package:flutter/material.dart';
import 'image_picker_page.dart';
import 'slider_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 3;

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
          'مرحبا ${widget.username}',
          style: const TextStyle(color: Colors.black),
        ),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              drawerItem(Icons.home, 'القائمة الرئيسية'),
              drawerItem(Icons.person, 'ملفي الشخصي'),
              drawerItem(Icons.language, 'تغيير اللغة'),
              drawerItem(Icons.link, 'تفاصيل الاشتراكات'),
              drawerItem(Icons.group, 'خدمة الأهل والأصدقاء'),
              drawerItem(Icons.call, 'خدمة اتصل بي'),
              drawerItem(Icons.account_balance_wallet, 'خدمة تمار'),
              drawerItem(Icons.exit_to_app, 'خروج'),
              drawerItem(Icons.share, 'شارك التطبيق'),
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
              child: const Text('اختيار صوره'),
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
              child: const Text(' Slider'),
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
